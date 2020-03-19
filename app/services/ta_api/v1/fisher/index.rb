module TaAPI
  module V1
    module Fisher
      class Index < Base
        def resource_key
          :fisher
        end

        def request_type
          :get
        end
      end
    end
  end
end

#JSON.parse(API::Base.request(:taapi, :fisher, interval: "2h", period: 14))
