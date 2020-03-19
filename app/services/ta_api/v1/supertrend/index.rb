module TaAPI
  module V1
    module Supertrend
      class Index < Base
        def resource_key
          :supertrend
        end

        def request_type
          :get
        end
      end
    end
  end
end
