module TaAPI
  module V2
    module Ab
      class Show < Base
        include TaAPI::Indicator

        def resource_key
          :abs
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

# TaAPI::V2::Ab::Show.new(exchange: exchange, symbol: symbol, interval: interval).execute

