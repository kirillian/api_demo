module TaAPI
  module V1
    module Rsi
      class Index < Base
        def resource_key
          :rsi
        end

        def request_type
          :get
        end
      end
    end
  end
end

#JSON.parse(API::Base.request(:taapi, :rsi, interval: "2h", period: 14))
