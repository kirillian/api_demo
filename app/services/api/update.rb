# frozen_string_literal: true

module API
  module Update
    def request_type
      :put
    end

    def payload
      return "" if params.empty?

      params.to_json
    end
  end
end
