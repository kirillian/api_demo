module TaAPI
  module V2
    module Belthold
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :belthold
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

# TaAPI::V2::Belthold::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

