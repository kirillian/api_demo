module TaAPI
  module V2
    module Avgprice
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :avgprice
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

# TaAPI::V2::Avgprice::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

