module TaAPI
  module V2
    module Apo
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :apo
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

# TaAPI::V2::Apo::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

