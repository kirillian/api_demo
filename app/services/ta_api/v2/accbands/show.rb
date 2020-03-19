module TaAPI
  module V2
    module Accband
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :accbands
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

# TaAPI::V2::Accband::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

