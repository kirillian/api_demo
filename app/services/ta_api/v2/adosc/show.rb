module TaAPI
  module V2
    module Adosc
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :adosc
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

# TaAPI::V2::Adosc::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

