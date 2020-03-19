module API
  class Response
    attr_accessor :response, :request, :result, :block

    def initialize(response, request, result, &block)
      @response = response
      @request = request
      @result = result
      @block = block
    end

    def debug?
      ENV["DEBUG"] == "true"
    end

    def handle_response
      response.return!(&block) unless debug?

      error_handlers.fetch(response.code.to_s, error_handlers[:default]).()
    end

    def error_handlers
      {
        "200" => -> { succeeded },
        default: -> { failed },
      }
    end

    def succeeded
      response
    end

    def failed
      display_error_messages
      response.return!(&block)
    end

    def display_error_messages
      puts "Request failed with code: #{response.code}"
    end

    def self.handle(response, request, result, &block)
      new(response, request, result, &block).handle_response
    end
  end
end
