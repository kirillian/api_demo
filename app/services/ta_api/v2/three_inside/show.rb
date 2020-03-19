module TaAPI
  module V2
    module ThreeInside
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :3inside
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

# TaAPI::V2::ThreeInside::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

