module TaAPI
  module V2
    module Bbands2
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :bbands2
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

# TaAPI::V2::Bbands2::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

