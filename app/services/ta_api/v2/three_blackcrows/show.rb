module TaAPI
  module V2
    module ThreeBlackcrow
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :3blackcrows
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

# TaAPI::V2::ThreeBlackcrow::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

