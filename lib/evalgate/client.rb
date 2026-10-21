# frozen_string_literal: true
module EvalGate
  Response = Struct.new(:data, :status, :headers, keyword_init: true)

  class APIError < StandardError
    attr_reader :status, :code, :request_id, :headers, :data
    def initialize(status:, headers:, data:)
      @status, @headers, @data = status, headers, data
      detail = data.is_a?(Hash) ? data : {}
      nested = detail["error"].is_a?(Hash) ? detail["error"] : {}
      @code = detail["code"] || nested["code"]
      @request_id = headers["x-request-id"]
      message = detail["message"] || nested["message"] || (detail["error"] if detail["error"].is_a?(String)) || "Request failed"
      super("EvalGate HTTP #{status} (#{@code}): #{message}")
    end
  end

  # Generated models validate documented required fields and primitive types.
  # Unions that OpenAPI cannot express as a single Ruby class remain JSON values.
  class Model
    class << self
      def fields(definitions = nil)
        @fields = definitions if definitions
        @fields || {}
      end

      def decode(type, value)
        return nil if value.nil?
        return decode(type.delete_prefix("*"), value) if type.start_with?("*")
        return value.map { |item| decode(type.delete_prefix("[]"), item) } if type.start_with?("[]") && value.is_a?(Array)
        return value.transform_values { |item| decode(type.delete_prefix("map[string]"), item) } if type.start_with?("map[string]") && value.is_a?(Hash)
        resolved = Models::ALIASES.fetch(type, type)
        return decode(resolved, value) if resolved != type
        klass = Models::TYPES[type]
        klass && value.is_a?(Hash) ? klass.new(**value.transform_keys(&:to_sym)) : value
      end

      def valid?(type, value)
        return true if type == "any" || type == "json.RawMessage"
        return value.nil? || valid?(type.delete_prefix("*"), value) if type.start_with?("*")
        resolved = Models::ALIASES.fetch(type, type)
        return valid?(resolved, value) if resolved != type
        return value.is_a?(Array) && value.all? { |item| valid?(type.delete_prefix("[]"), item) } if type.start_with?("[]")
        return value.is_a?(Hash) && value.values.all? { |item| valid?(type.delete_prefix("map[string]"), item) } if type.start_with?("map[string]")
        case type
        when "string" then value.is_a?(String)
        when "int64" then value.is_a?(Integer)
        when "float64" then value.is_a?(Numeric)
        when "bool" then value == true || value == false
        else value.is_a?(Hash) || (Models::TYPES[type] && value.is_a?(Models::TYPES[type]))
        end
      end
    end

    def initialize(**values)
      values = values.transform_keys(&:to_s)
      self.class.fields.each do |name, contract|
        raise ArgumentError, "Missing required model property #{name}" if contract.fetch("required") && !values.key?(name)
        raise ArgumentError, "Invalid model property #{name}: expected #{contract.fetch('type')}" if values.key?(name) && !Model.valid?(contract.fetch("type"), values[name])
      end
      @values = values.transform_values { |value| value }
      self.class.fields.each do |name, contract|
        @values[name] = Model.decode(contract.fetch("type"), values[name]) if values.key?(name)
      end
    end

    def to_h
      @values.transform_values { |value| serialize(value) }
    end

    def to_json(*arguments)
      to_h.to_json(*arguments)
    end

    def [](name)
      @values[name.to_s]
    end

    def method_missing(name, *arguments)
      return @values[name.to_s] if arguments.empty? && self.class.fields.key?(name.to_s)
      super
    end

    def respond_to_missing?(name, include_private = false)
      self.class.fields.key?(name.to_s) || super
    end

    private

    def serialize(value)
      case value
      when Model then value.to_h
      when Array then value.map { |item| serialize(item) }
      when Hash then value.transform_values { |item| serialize(item) }
      else value
      end
    end
  end

  class Client
    def initialize(api_key:, base_url: "https://www.evalgate.com", organization_id: nil, timeout: 30)
      raise ArgumentError, "API key is required" if api_key.to_s.strip.empty?
      @base_url = URI(base_url)
      unless %w[http https].include?(@base_url.scheme) && @base_url.host && !@base_url.userinfo && !@base_url.query && !@base_url.fragment
        raise ArgumentError, "base_url must be an absolute HTTP(S) origin or path without credentials, query, or fragment"
      end
      raise ArgumentError, "timeout must be positive" unless timeout.is_a?(Numeric) && timeout.positive? && timeout.finite?
      @api_key, @organization_id, @timeout = api_key.strip, organization_id, timeout
    end

    # Never exposes credentials through default Object#inspect output.
    def inspect
      "#<EvalGate::Client base_url=#{@base_url}>"
    end

    def request(operation_id, path: {}, query: {}, headers: {}, body: nil, idempotency_key: nil)
      operation = OPERATIONS.fetch(operation_id) { raise ArgumentError, "Unknown operation #{operation_id}" }
      groups = { "path" => path.transform_keys(&:to_s), "query" => query.transform_keys(&:to_s), "header" => headers.transform_keys(&:to_s) }
      groups.each do |location, values|
        allowed = operation.fetch("#{location}Parameters")
        required = operation.fetch("required#{location.capitalize}Parameters")
        unknown = values.keys - allowed
        raise ArgumentError, "Unknown #{location} parameters: #{unknown.join(', ')}" unless unknown.empty?
        missing = required.select { |key| !values.key?(key) || values[key].nil? || values[key] == "" }
        raise ArgumentError, "Missing #{location} parameters: #{missing.join(', ')}" unless missing.empty?
      end
      body = body.to_h if body.is_a?(Model)
      raise ArgumentError, "Request body is required" if operation.fetch("requestBodyRequired") && body.nil?
      raise ArgumentError, "Operation does not accept a request body" if !operation.fetch("requestBodyAllowed") && !body.nil?
      required = operation.fetch("requiredBodyProperties")
      unless body.nil? || required.empty?
        raise ArgumentError, "Body must be an object" unless body.is_a?(Hash)
        missing = required - body.keys.map(&:to_s)
        raise ArgumentError, "Missing body properties: #{missing.join(', ')}" unless missing.empty?
      end
      endpoint = operation.fetch("path").gsub(/\{([^}]+)\}/) { escape_segment(groups.fetch("path").fetch(Regexp.last_match(1))) }
      uri = URI(@base_url.to_s.sub(%r{/$}, "") + endpoint)
      pairs = groups.fetch("query").flat_map do |name, value|
        next [] if value.nil?
        (value.is_a?(Array) ? value : [value]).map { |item| [name, item.is_a?(Hash) ? JSON.generate(item) : item.to_s] }
      end
      uri.query = URI.encode_www_form(pairs) unless pairs.empty?
      request = Net::HTTPGenericRequest.new(operation.fetch("method"), !body.nil?, operation.fetch("method") != "HEAD", uri.request_uri)
      request["Accept"] = "application/json"
      request["Authorization"] = "Bearer #{@api_key}"
      request["X-EvalGate-SDK-Version"] = VERSION
      request["X-EvalGate-Spec-Version"] = SPEC_VERSION
      request["X-Organization-Id"] = @organization_id if @organization_id
      groups.fetch("header").each do |name, value|
        raise ArgumentError, "Credential header cannot be overridden" if %w[authorization cookie host].include?(name.downcase)
        request[name] = value.to_s unless value.nil?
      end
      request["Idempotency-Key"] = idempotency_key if idempotency_key
      unless body.nil?
        request["Content-Type"] = "application/json"
        request.body = JSON.generate(body)
      end
      # Net::HTTP does not follow redirects. Disable automatic transport retries.
      http = Net::HTTP.new(uri.host, uri.port, nil)
      http.use_ssl = uri.scheme == "https"
      http.open_timeout = @timeout
      http.read_timeout = @timeout
      http.write_timeout = @timeout
      http.max_retries = 0
      response = http.request(request)
      encoded = response.body.to_s
      raise IOError, "EvalGate response exceeds 32 MiB limit" if encoded.bytesize > 32 * 1024 * 1024
      begin
        data = encoded.strip.empty? ? nil : JSON.parse(encoded)
      rescue JSON::ParserError
        raise IOError, "Invalid EvalGate JSON response" if response.code.to_i.between?(200, 299)
        data = { "error" => encoded }
      end
      response_headers = response.each_header.to_h
      raise APIError.new(status: response.code.to_i, headers: response_headers, data: data) unless response.code.to_i.between?(200, 299)
      Response.new(data: data, status: response.code.to_i, headers: response_headers)
    end

    def paginate(operation_id, path: {}, query: {}, headers: {}, max_pages: 100)
      return enum_for(__method__, operation_id, path: path, query: query, headers: headers, max_pages: max_pages) unless block_given?
      operation = OPERATIONS.fetch(operation_id)
      raise ArgumentError, "Operation does not declare pagination" unless operation["pagination"]
      raise ArgumentError, "max_pages must be a positive integer" unless max_pages.is_a?(Integer) && max_pages.positive?
      query = query.transform_keys(&:to_s).dup
      seen = {}
      max_pages.times do
        response = request(operation_id, path: path, query: query, headers: headers)
        yield response
        data = response.data
        raise IOError, "Pagination requires an object or array response" unless data.is_a?(Hash) || data.is_a?(Array)
        envelope = data.is_a?(Hash) ? data : {}
        state = envelope["pagination"] || envelope.dig("meta", "pagination") || envelope["meta"] || envelope
        has_more = state.key?("hasMore") ? state["hasMore"] : state["has_more"]
        return if has_more == false
        if operation.fetch("pagination") == "cursor"
          cursor = state["nextCursor"] || state["next_cursor"]
          return unless cursor.is_a?(String) && !cursor.empty?
          raise IOError, "Pagination repeated cursor" if seen[cursor]
          seen[cursor] = true
          query["cursor"] = cursor
          next
        end
        limit = Integer(query["limit"] || state["limit"] || 50)
        raise ArgumentError, "Pagination limit must be positive" unless limit.positive?
        items = data.is_a?(Array) ? data : %w[data items results evaluations traces].filter_map { |key| data[key] if data[key].is_a?(Array) }.first
        return if has_more.nil? && items && items.length < limit
        if operation.fetch("pagination") == "offset"
          step = items ? items.length : limit
          raise IOError, "Pagination made no progress" if step.zero?
          query["offset"] = Integer(query["offset"] || state["offset"] || 0) + step
          return if state["total"] && query["offset"] >= Integer(state["total"])
        else
          page = Integer(query["page"] || state["page"] || 1)
          total = state["totalPages"] || state["total_pages"]
          return if total && page >= Integer(total)
          query["page"] = page + 1
        end
      end
      raise IOError, "Pagination exceeded max_pages"
    end

    private

    def escape_segment(value)
      raise ArgumentError, "Dot path segments are not allowed" if %w[. ..].include?(value.to_s)
      URI.encode_www_form_component(value.to_s).gsub("+", "%20")
    end
  end
end
