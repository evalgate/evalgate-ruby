require "minitest/autorun"
require "socket"
require_relative "../lib/evalgate"

class EvalGateClientTest < Minitest::Test
  def fixture(status: 200, body: {}, headers: {}, handler: nil)
    server = TCPServer.new("127.0.0.1", 0)
    requests = Queue.new
    thread = Thread.new do
      loop do
        socket = server.accept
        request_line = socket.gets
        request_headers = {}
        while (line = socket.gets) && line != "\r\n"
          name, value = line.split(":", 2)
          request_headers[name.downcase] = value.strip
        end
        payload = socket.read(request_headers.fetch("content-length", "0").to_i)
        request = { line: request_line.strip, headers: request_headers, body: payload.empty? ? nil : JSON.parse(payload) }
        requests << request
        response = handler ? handler.call(request) : { status: status, body: body, headers: headers }
        encoded = response.fetch(:body).is_a?(String) ? response.fetch(:body) : JSON.generate(response.fetch(:body))
        socket.write("HTTP/1.1 #{response.fetch(:status)} Fixture\r\nContent-Type: application/json\r\nContent-Length: #{encoded.bytesize}\r\nConnection: close\r\n")
        response.fetch(:headers, {}).each { |name, value| socket.write("#{name}: #{value}\r\n") }
        socket.write("\r\n#{encoded}")
        socket.close
      end
    rescue IOError, Errno::EBADF
      nil
    end
    client = EvalGate::Client.new(api_key: "fixture-secret", base_url: "http://127.0.0.1:#{server.addr[1]}", organization_id: "42")
    yield client, requests
  ensure
    server&.close
    thread&.join(1)
    thread&.kill
  end

  def test_read_auth_headers_query_and_rate_limits
    fixture(body: { "evaluations" => [] }, headers: { "RateLimit" => '"fixture";r=9;t=60' }) do |client, requests|
      response = client.get_evaluations(query: { limit: 2, search: "space & value" })
      request = requests.pop
      assert_includes request[:line], "limit=2&search=space+%26+value"
      assert_equal "Bearer fixture-secret", request[:headers]["authorization"]
      assert_equal "42", request[:headers]["x-organization-id"]
      assert_equal EvalGate::VERSION, request[:headers]["x-evalgate-sdk-version"]
      assert_equal '"fixture";r=9;t=60', response.headers["ratelimit"]
      refute_includes client.inspect, "fixture-secret"
    end
  end

  def test_generated_model_mutation_and_idempotency
    model_type = EvalGate::Models::TYPES.fetch(EvalGate::Models::ALIASES.fetch("PostApiEvaluationsRequest"))
    body = model_type.new(name: "release-check")
    assert_equal "release-check", body.name
    assert_raises(ArgumentError) { model_type.new }
    assert_raises(ArgumentError) { model_type.new(name: 2) }
    fixture(status: 201, body: nil) do |client, requests|
      client.post_evaluations(body: body, idempotency_key: "once-1")
      request = requests.pop
      assert_equal({ "name" => "release-check" }, request[:body])
      assert_equal "once-1", request[:headers]["idempotency-key"]
    end
  end

  def test_structured_errors_retry_after_and_no_retries
    fixture(status: 429, body: { "error" => { "code" => "RATE_LIMITED", "message" => "Slow down" } }, headers: { "Retry-After" => "3", "X-Request-Id" => "request-1" }) do |client, requests|
      error = assert_raises(EvalGate::APIError) { client.get_evaluations }
      assert_equal 429, error.status
      assert_equal "RATE_LIMITED", error.code
      assert_equal "request-1", error.request_id
      assert_equal "3", error.headers["retry-after"]
      assert_equal 1, requests.size
    end
  end

  def test_required_arguments_and_unsupported_query_fail_before_network
    client = EvalGate::Client.new(api_key: "fixture", base_url: "http://127.0.0.1:1")
    assert_raises(ArgumentError) { client.post_evaluations(body: nil) }
    assert_raises(ArgumentError) { client.get_evaluations_id }
    assert_raises(ArgumentError) { client.get_evaluations(query: { surprise: 1 }) }
    assert_raises(ArgumentError) { client.request("post_evaluations", body: {}) }
  end

  def test_redirects_are_not_followed
    fixture(status: 302, body: {}, headers: { "Location" => "http://127.0.0.1:1/leak" }) do |client, requests|
      error = assert_raises(EvalGate::APIError) { client.get_evaluations }
      assert_equal 302, error.status
      assert_equal 1, requests.size
    end
  end

  def test_pagination_and_bounds
    fixture do |client, requests|
      # Replace only this fixture's response through a separate finite server below.
      assert_raises(ArgumentError) { client.paginate("get_evaluations", max_pages: 0).to_a }
    end
    page = 0
    handler = lambda do |_request|
      page += 1
      { status: 200, body: { "data" => [{ "id" => page }], "pagination" => { "hasMore" => page < 2 } } }
    end
    fixture(handler: handler) do |client, requests|
      responses = client.paginate("get_evaluations", query: { limit: 1 }, max_pages: 3).to_a
      assert_equal 2, responses.length
      assert_includes requests.pop[:line], "limit=1"
      assert_includes requests.pop[:line], "offset=1"
    end
  end

  def test_invalid_json_and_config
    fixture(body: "invalid") do |client, _requests|
      assert_raises(IOError) { client.get_evaluations }
    end
    assert_raises(ArgumentError) { EvalGate::Client.new(api_key: "") }
    assert_raises(ArgumentError) { EvalGate::Client.new(api_key: "key", base_url: "file:///tmp/key") }
    assert_raises(ArgumentError) { EvalGate::Client.new(api_key: "key", base_url: "https://user:pass@example.com") }
  end

  def test_array_pagination_and_no_progress
    page = 0
    handler = lambda do |_request|
      page += 1
      { status: 200, body: page == 1 ? [{ "id" => 1 }] : [] }
    end
    fixture(handler: handler) do |client, requests|
      assert_equal 2, client.paginate("get_evaluations", query: { limit: 1 }, max_pages: 3).to_a.length
      assert_equal 2, requests.size
    end
    fixture(body: { "data" => [], "pagination" => { "hasMore" => true } }) do |client, _requests|
      error = assert_raises(IOError) { client.paginate("get_evaluations", max_pages: 3).to_a }
      assert_includes error.message, "no progress"
    end
  end

  def test_nullable_types_and_map_values
    assert EvalGate::Model.valid?("*string", nil)
    refute EvalGate::Model.valid?("string", nil)
    assert EvalGate::Model.valid?("map[string]*string", { "a" => nil, "b" => "value" })
    refute EvalGate::Model.valid?("map[string]int64", { "a" => "wrong" })
    assert_equal({ "a" => nil }, EvalGate::Model.decode("map[string]*string", { "a" => nil }))
  end

  def test_generated_nullable_collections_preserve_nil_and_empty_values
    item_type = EvalGate::Models::PostApiSyncLabeledCasesRequestModelCasesItem
    nullable = item_type.new(input: "case", standardsRefs: nil, metadata: nil)
    assert_nil nullable["standardsRefs"]
    assert_nil nullable["metadata"]
    assert_equal({ "input" => "case", "standardsRefs" => nil, "metadata" => nil }, nullable.to_h)
    assert_raises(ArgumentError) { item_type.new(input: "case", standardsRefs: [2]) }
    body_type = EvalGate::Models::PostApiSyncLabeledCasesRequest
    assert_raises(ArgumentError) { body_type.new(evaluationId: 1, cases: nil) }
    fixture(body: nil) do |client, requests|
      body = body_type.new(evaluationId: 1, cases: [nullable])
      client.post_sync_labeled_cases(body: body)
      assert_equal [nullable.to_h], requests.pop[:body]["cases"]
    end
    empty = item_type.new(input: "case", standardsRefs: [], metadata: {})
    assert_equal [], empty.to_h["standardsRefs"]
    assert_equal({}, empty.to_h["metadata"])
    omitted = item_type.new(input: "case")
    refute omitted.to_h.key?("standardsRefs")
    refute omitted.to_h.key?("metadata")
    assert EvalGate::Model.valid?("*[]string", nil)
    refute EvalGate::Model.valid?("[]string", nil)
    assert EvalGate::Model.valid?("*map[string]string", nil)
    refute EvalGate::Model.valid?("map[string]string", nil)
  end
end
