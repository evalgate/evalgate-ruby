require "json"
require "net/http"
require "uri"

# First publication must assert the immutable RubyGems account ID during the
# official OIDC exchange. No credential is written to disk or shared with CI.
module EvalGateSdkPublication
  class ReleaseError < StandardError; end

  def self.request_json(request)
    response = Net::HTTP.start(request.uri.host, request.uri.port,
      use_ssl: true, open_timeout: 30, read_timeout: 30) { |http| http.request(request) }
    unless response.is_a?(Net::HTTPSuccess)
      raise ReleaseError, "Identity exchange failed (HTTP #{response.code}); check the owner and pending trusted publisher."
    end
    JSON.parse(response.body)
  rescue JSON::ParserError
    raise ReleaseError, "Identity exchange returned invalid JSON."
  end

  def self.secret(value)
    unless value.is_a?(String) && !value.empty? && !value.match?(/[\r\n]/)
      raise ReleaseError, "Identity exchange returned an invalid credential."
    end
    puts "::add-mask::#{value}"
    $stdout.flush
    value
  end

  def self.publish(owner:, gem_path:)
    unless owner.is_a?(String) && owner.match?(/\A[1-9][0-9]*\z/)
      raise ReleaseError, "Provide the numeric RubyGems account ID shown on Pending Trusted Publishers."
    end
    unless File.file?(gem_path)
      raise ReleaseError, "The verified SDK gem is missing."
    end

    token_uri = URI(ENV.fetch("ACTIONS_ID_TOKEN_REQUEST_URL"))
    unless token_uri.scheme == "https"
      raise ReleaseError, "GitHub's OIDC endpoint must use HTTPS."
    end
    token_uri.query = URI.encode_www_form(
      URI.decode_www_form(token_uri.query.to_s).reject { |key, _| key == "audience" } +
      [["audience", "rubygems.org"]]
    )
    identity_request = Net::HTTP::Get.new(token_uri)
    identity_request["Authorization"] = "Bearer #{ENV.fetch("ACTIONS_ID_TOKEN_REQUEST_TOKEN")}"
    jwt = secret(request_json(identity_request).fetch("value"))

    exchange = Net::HTTP::Post.new(URI("https://rubygems.org/api/v1/oidc/trusted_publisher/exchange_token"))
    exchange["Content-Type"] = "application/json"
    exchange["Accept"] = "application/json"
    exchange.body = JSON.generate(jwt: jwt, owner: owner)
    api_key = secret(request_json(exchange).fetch("rubygems_api_key"))

    unless system({ "GEM_HOST_API_KEY" => api_key }, "gem", "push", gem_path)
      raise ReleaseError, "RubyGems rejected the SDK package."
    end
  end
end

if $PROGRAM_NAME == __FILE__
  begin
    EvalGateSdkPublication.publish(
      owner: ENV.fetch("RUBYGEMS_OWNER_ID", ""),
      gem_path: File.join(ENV.fetch("RUNNER_TEMP"), "evalgate-sdk.gem")
    )
  rescue EvalGateSdkPublication::ReleaseError => error
    abort error.message
  rescue StandardError => error
    abort "Publication failed (#{error.class}); no credentials are included in this diagnostic."
  end
end
