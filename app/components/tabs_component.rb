# frozen_string_literal: true

class TabsComponent < ViewComponent::Base
  DEFAULT_STYLE = :tabs
  DEFAULT_POSITION = :top

  CLASS_PREFIX = 'nav'

  include ViewComponent::SlotableV2

  renders_many :items, Tabs::ItemComponent

  attr_reader :style, :position

  def initialize(options = {})
    @options = options.symbolize_keys
    extract_options
  end

  private

  def extract_options
    @style = @options.delete(:style) || DEFAULT_STYLE
    @position = @options.delete(:position) || DEFAULT_POSITION
  end

  def component_class
    class_names = Array(@options[:class])
    class_names << CLASS_PREFIX
    class_names << style_class
    class_names << position_class
    class_names.compact
  end

  def style_class
    "#{CLASS_PREFIX}-#{style}"
  end

  def position_class
    "#{CLASS_PREFIX}-#{position}"
  end

  %i[style].each do |name|
    define_method("#{name}?") do
      !!instance_variable_get("@#{name}")
    end
  end
end
