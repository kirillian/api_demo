module TaAPI
  module V2
    class Base < API::Backend
      def config_klass
        TaAPI::Config
      end

      def timestamp
        @timestamp ||= Time.now
      end

      def authorization_headers
        {
          content_type: :json,
        }
      end

      def response_handler
        TaAPI::V2::Response
      end
    end
  end
end
