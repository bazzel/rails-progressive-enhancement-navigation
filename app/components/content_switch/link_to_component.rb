# frozen_string_literal: true

module ContentSwitch
  class LinkToComponent < ViewComponent::Base
    attr_reader :name, :options, :html_options

    def initialize(name = nil, options = {}, html_options = {})
      @name = name
      @options = options
      @html_options = html_options
    end

    private

    def before_render
      if content
        @html_options = options
        @options = name
        @name = content
      end

      set_class_names
      set_data_attributes
    end

    def set_class_names
      html_options[:class] = link_class
    end

    def set_data_attributes
      html_options[:data] ||= {}
      html_options[:data][:turbo_frame] = 'content'
      html_options[:data][:action] = 'click->content-switch#activate'
    end

    def link_class
      class_names = Array(html_options[:class])
      class_names << active_class

      class_names.join(' ')
    end

    def active_class
      %w[active] if active?
    end

    def active?
      current_page?(options)
    end
  end
end
