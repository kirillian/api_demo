module TaAPI
  module V2
    module Aroon
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :aroon
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

# TaAPI::V2::Aroon::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

