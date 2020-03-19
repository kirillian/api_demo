module TaAPI
  module V2
    module Asin
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :asin
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

# TaAPI::V2::Asin::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

