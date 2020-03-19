module TaAPI
  module V1
    module Macd
      class Index < Base
        def resource_key
          :macd
        end

        def request_type
          :get
        end
      end
    end
  end
end

#JSON.parse(API::Base.request(:taapi, :macd, interval: "2h", period: 14))
