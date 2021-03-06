module TaAPI
  module V2
    module Avgdev
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :avgdev
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

# TaAPI::V2::Avgdev::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

