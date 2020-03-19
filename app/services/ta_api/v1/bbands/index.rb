module TaAPI
  module V1
    module Bbands
      class Index < Base
        def resource_key
          :bbands
        end

        def request_type
          :get
        end
      end
    end
  end
end

#JSON.parse(API::Base.request(:taapi, :bbands, interval: "2h", period: 14))
