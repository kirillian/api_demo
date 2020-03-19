module API
  class Backend
    attr_accessor :params

    delegate :base_uri, to: :config_klass

    def initialize(**params)
      @params = params
    end

    def config
      @config ||= config_klass.new
    end

    def path
      "#{resource_path}"
    end

    def resource_path
      "#{resource_key}"
    end

    def resource_key
      raise "#resource_key method not implemented on #{self.class.name}"
    end

    def headers
      {
        content_type: :json,
      }
    end

    def authorization_headers
      raise "#authorization_headers method not implemented on #{self.class.name}"
    end

    def all_headers
      return headers unless authorized?

      headers.merge(authorization_headers)
    end

    def hmac_parts
      raise "#hmac_parts method not implemented on #{self.class.name}"
    end

    def config_klass
      raise "#config_klass method not implemented on #{self.class.name}"
    end

    def authorized?
      true
    end

    def signature
      OpenSSL::HMAC.new(
        config.secret,
        OpenSSL::Digest::SHA256.new,
      ).tap do |hmac|
        hmac << hmac_parts.join("")
      end.hexdigest
    end

    def payload
      return "" if params.empty?
      params.to_json
    end

    def response
      @response ||= send(request_type)
    end

    def request
      response
    end

    def resource_url
      "#{base_uri}/#{resource_path}"
    end

    def post
      RestClient::Request.execute method: :post, url: resource_url, payload: payload, headers: all_headers, log: Logger.new(STDOUT), &method(:handle_errors)
    end

    def delete
      RestClient::Request.execute method: :delete, url: resource_url, headers: all_headers.merge(params: params), log: Logger.new(STDOUT), &method(:handle_errors)
    end

    def get
      RestClient::Request.execute method: :get, url: resource_url, payload: payload, headers: all_headers, log: Logger.new(STDOUT), &method(:handle_errors)
    end

    def handle_errors(response, request, result, &block)
      response_handler.handle(response, request, result, &block)
    end

    def response_handler
      raise "#response_handler method not implemented on #{self.class.name}"
    end

    def self.request(**params)
      new(**params).request
    end
  end
end
