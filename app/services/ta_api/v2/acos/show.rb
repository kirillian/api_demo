module TaAPI
  module V2
    module Aco
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :acos
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

# TaAPI::V2::Aco::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

