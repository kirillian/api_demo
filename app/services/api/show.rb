# frozen_string_literal: true

module API
  module Show
    def request_type
      :get
    end

    def resource_path
      "#{resource_key}/#{self.class.name.demodulize.camelize(:lower)}"
    end
  end
end
