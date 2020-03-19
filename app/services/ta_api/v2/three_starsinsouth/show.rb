module TaAPI
  module V2
    module ThreeStarsinsouth
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :3starsinsouth
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

# TaAPI::V2::ThreeStarsinsouth::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

