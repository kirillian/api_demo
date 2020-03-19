module TaAPI
  module V1
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

      def params
        @params.reverse_merge(
          secret: config.secret,
          exchange: "binance",
          symbol: "BTCUSDT",
        )
      end

    end
  end
end


#JSON.parse(API::Base.request(:taapi, :rsi, interval: "2h", period: 14))
