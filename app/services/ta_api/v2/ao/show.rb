module TaAPI
  module V2
    module Ao
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :ao
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

# TaAPI::V2::Ao::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

