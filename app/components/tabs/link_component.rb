# frozen_string_literal: true

module Tabs
  class LinkComponent < ViewComponent::Base
    attr_reader :item

    def initialize(item)
      @item = item
    end

    private

    def component_class
      class_names = []
      class_names << active_class
      class_names << disabled_class

      class_names.flatten.compact
    end

    def active_class
      return unless item.active? && !item.disabled?

      %w[active]
    end

    def disabled_class
      return unless item.disabled?

      %w[disabled]
    end
  end
end
