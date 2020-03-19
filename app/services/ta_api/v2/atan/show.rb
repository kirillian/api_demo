module TaAPI
  module V2
    module Atan
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :atan
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

# TaAPI::V2::Atan::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

