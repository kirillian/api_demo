module API
  class Config
    attr_accessor :base_uri, :id, :secret

    def initialize
      @id = yaml["key"]
      @secret = yaml["secret"]
      @base_uri = yaml["base_uri"]
    end

    def filepath
      @filepath ||= File.join(Rails.root, "config", "api_keys.yml")
    end

    def configuration_key
      raise "#configuration_key method not implemented on #{self.class.name}"
    end

    def yaml
      @yaml ||= YAML.load(File.read(filepath))[configuration_key.to_s]
    end

    def self.id
      new.id
    end

    def self.secret
      new.secret
    end

    def self.base_uri
      new.base_uri
    end
  end
end
