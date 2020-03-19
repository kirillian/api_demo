module TaAPI
  module V2
    module Bop
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :bop
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

# TaAPI::V2::Bop::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

