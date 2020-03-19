module TaAPI
  module V1
    module Bop
      class Index < Base
        def resource_key
          :bop
        end

        def request_type
          :get
        end
      end
    end
  end
end

#JSON.parse(API::Base.request(:taapi, :bop, interval: "2h", period: 14))
