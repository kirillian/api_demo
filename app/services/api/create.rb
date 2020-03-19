# frozen_string_literal: true

module API
  module Create
    def request_type
      :post
    end

    def payload
      return "" if params.empty?

      params.to_json
    end
  end
end
