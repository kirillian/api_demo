module TaAPI
  module V2
    module Candle
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :candles
        end

        def params
          @params.reverse_merge(
            indicator: resource_key,
          )
        end
      end
    end
  end
end

# TaAPI::V2::Candle::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

