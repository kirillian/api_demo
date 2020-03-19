module TaAPI
  module V2
    module ThreeWhitesoldier
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :3whitesoldiers
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

# TaAPI::V2::ThreeWhitesoldier::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

