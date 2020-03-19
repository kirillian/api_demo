module TaAPI
  module V2
    module Aroonosc
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :aroonosc
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

# TaAPI::V2::Aroonosc::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

