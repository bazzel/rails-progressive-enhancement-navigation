# frozen_string_literal: true

module Tabs
  class ItemComponent < ViewComponent::Base
    attr_reader :title, :options

    def initialize(title, options = {})
      @title = title
      @options = options.symbolize_keys
      extract_options
    end

    %i[active disabled].each do |name|
      define_method("#{name}?") do
        !!instance_variable_get("@#{name}")
      end
    end

    def tab_id
      "tab-#{object_id}"
    end

    def pane_id
      "pane-#{object_id}"
    end

    private

    def extract_options
      @active = @options.delete(:active)
      @disabled = @options.delete(:disabled)
    end

    def component_class
      class_names = ['tab-pane']

      class_names << active_class
      class_names.join(' ')
    end

    def active_class
      return unless active?

      %w[active]
    end
  end
end
