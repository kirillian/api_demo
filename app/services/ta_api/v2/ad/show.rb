module TaAPI
  module V2
    module Ad
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :ad
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

# TaAPI::V2::Ad::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

