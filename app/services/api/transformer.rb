# frozen_string_literal: true

module API
  module Transformer
    extend ActiveSupport::Concern

    included do
      attr_accessor :payload

      delegate :errors, :save, :save!, to: :transformed_object

      class UnknownStatusError < StandardError; end
    end

    module ClassMethods
      def transform(payload)
        new(payload).transformed_object
      end
    end

    def initialize(payload)
      @payload = payload.stringify_keys
    end

    def errors?
      payload.key? "error"
    end

    def object_key
      raise "#object_key method not implemented on #{self.class.name}"
    end

    def payload_object_key
      "id"
    end

    def new_or_existing_object
      @new_or_existing_object ||= object_klass.find_or_initialize_by(object_key => payload[payload_object_key])
    end

    def transformed_object
      @transformed_object ||= new_or_existing_object.tap do |object|
        object.assign_attributes(transformed_attributes.compact)
      end
    end

    def base_attributes
      {
        object_key => payload[payload_object_key],
        data: payload,
      }
    end
  end
end
