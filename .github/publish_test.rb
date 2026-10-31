require "minitest/autorun"
require "stringio"
require "tempfile"
require_relative "publish"

class SdkPublicationTest < Minitest::Test
  def setup
    @gem = Tempfile.new(["sdk-publication", ".gem"])
    @old_url = ENV["ACTIONS_ID_TOKEN_REQUEST_URL"]
    @old_token = ENV["ACTIONS_ID_TOKEN_REQUEST_TOKEN"]
    ENV["ACTIONS_ID_TOKEN_REQUEST_URL"] = "https://example.invalid/oidc?existing=1"
    ENV["ACTIONS_ID_TOKEN_REQUEST_TOKEN"] = "fixture-request-token"
  end

  def teardown
    ENV["ACTIONS_ID_TOKEN_REQUEST_URL"] = @old_url
    ENV["ACTIONS_ID_TOKEN_REQUEST_TOKEN"] = @old_token
    @gem.close!
  end

  def with_release_calls(exchange:, push:)
    original_exchange = EvalGateSdkPublication.method(:request_json)
    original_push = EvalGateSdkPublication.method(:system)
    original_stdout = $stdout
    EvalGateSdkPublication.define_singleton_method(:request_json, exchange)
    EvalGateSdkPublication.define_singleton_method(:system, push)
    $stdout = StringIO.new
    yield
  ensure
    $stdout = original_stdout
    EvalGateSdkPublication.define_singleton_method(:request_json, original_exchange)
    EvalGateSdkPublication.define_singleton_method(:system, original_push)
  end

  def test_owner_is_sent_as_a_string_and_key_only_reaches_gem_child
    requests = []
    push = nil
    exchange = lambda do |request|
      requests << request
      requests.length == 1 ? { "value" => "fixture-jwt" } : { "rubygems_api_key" => "fixture-key" }
    end
    with_release_calls(exchange: exchange, push: ->(*arguments) { push = arguments; true }) do
      EvalGateSdkPublication.publish(owner: "12345", gem_path: @gem.path)
    end
    assert_equal "Bearer fixture-request-token", requests[0]["Authorization"]
    assert_includes URI.decode_www_form(requests[0].uri.query), ["audience", "rubygems.org"]
    assert_equal "https://rubygems.org/api/v1/oidc/trusted_publisher/exchange_token", requests[1].uri.to_s
    assert_equal({ "jwt" => "fixture-jwt", "owner" => "12345" }, JSON.parse(requests[1].body))
    assert_equal [{ "GEM_HOST_API_KEY" => "fixture-key" }, "gem", "push", @gem.path], push
    assert_nil ENV["GEM_HOST_API_KEY"]
  end

  def test_missing_or_mutable_owner_reference_fails_before_network
    ["", "paul", "0", "12\n34"].each do |owner|
      with_release_calls(
        exchange: ->(*) { flunk "must not request a token" },
        push: ->(*) { flunk "must not publish" }
      ) do
        assert_raises(EvalGateSdkPublication::ReleaseError) do
          EvalGateSdkPublication.publish(owner: owner, gem_path: @gem.path)
        end
      end
    end
  end

  def test_failed_exchange_cannot_push_a_gem
    [0, 1].each do |failure_index|
      request_index = -1
      exchange = lambda do |*|
        request_index += 1
        raise EvalGateSdkPublication::ReleaseError, "fixture exchange rejection" if request_index == failure_index
        { "value" => "fixture-jwt" }
      end
      with_release_calls(exchange: exchange, push: ->(*) { flunk "must not push after exchange failure" }) do
        assert_raises(EvalGateSdkPublication::ReleaseError) do
          EvalGateSdkPublication.publish(owner: "12345", gem_path: @gem.path)
        end
      end
    end
  end

  def test_failed_gem_push_is_a_failed_release
    responses = [{ "value" => "fixture-jwt" }, { "rubygems_api_key" => "fixture-key" }]
    with_release_calls(exchange: ->(*) { responses.shift }, push: ->(*) { false }) do
      assert_raises(EvalGateSdkPublication::ReleaseError) do
        EvalGateSdkPublication.publish(owner: "12345", gem_path: @gem.path)
      end
    end
  end
end
