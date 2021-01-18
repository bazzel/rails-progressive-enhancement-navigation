# frozen_string_literal: true

module Toggle
  class ItemComponent < ViewComponent::Base
    attr_reader :title, :name, :options

    def initialize(title:, name:, options: {})
      @title = title
      @name = name
      @options = options.symbolize_keys
      extract_options
    end

    %i[active].each do |name|
      define_method("#{name}?") do
        !!instance_variable_get("@#{name}")
      end
    end

    def id
      "toggle-item-#{object_id}"
    end

    private

    def extract_options
      @active = @options.delete(:active)
      @options[:id] = id
    end
  end
end
