module TaAPI
  module V2
    module ThreeLinestrike
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :3linestrike
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

# TaAPI::V2::ThreeLinestrike::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

