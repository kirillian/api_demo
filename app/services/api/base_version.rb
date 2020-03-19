module API
  module BaseVersion
    def self.extended(klass)
      klass.class_eval do
        def self.klass_name_for_resource(resource, endpoint=nil)
          endpoint ||= "index"
          "#{name}::#{resource.to_s.camelize}::#{endpoint.to_s.classify}"
        end

        def self.klass_for_resource(resource, endpoint=nil)
          klass_name_for_resource(resource, endpoint).constantize
        rescue
          raise "Could not find class named #{klass_name_for_resource(resource, endpoint)}"
        end

        def self.request(resource, endpoint=nil, **params)
          klass = klass_for_resource(resource, endpoint)

          return unless klass
          klass.request(**params)
        end
      end
    end
  end
end
