# frozen_string_literal: true

module API
  module Delete
    def request_type
      :delete
    end

    def payload
      return "" if params.empty?

      params.to_json
    end
  end
end
