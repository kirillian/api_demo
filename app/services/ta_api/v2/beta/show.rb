module TaAPI
  module V2
    module Betum
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :beta
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

# TaAPI::V2::Betum::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

