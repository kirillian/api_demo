module API
  class Base
    attr_accessor :params, :source

    def backends
      {
        bitmex: BitmexAPI::V1,
        coinbase: CoinbaseAPI::V2,
        taapi: TaAPI::V2,
      }
    end

    def initialize(source)
      @source = source.to_sym
    end

    def backend
      @backend ||= backends[source]
    end

    def request(resource, path=nil, **params)
      backend.request(resource, path, **params)
    end

    def self.request(source, resource, path=nil, **params)
      new(source).request(resource, path, **params)
    end
  end
end
