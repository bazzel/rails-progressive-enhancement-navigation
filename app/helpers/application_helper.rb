module ApplicationHelper
  def link_to_load_more(resources, type:)
    return if type.blank?
    return unless resources.respond_to?(:next_page)

    options = {
      class: 'load-more',
      data: {
        disable_with: 'Loading...'
      }
    }

    options[:remote] = true if %w[more endless].include?(type)
    options[:data][:controller] = 'infinite-scroll' if type == 'endless'

    link_to_next_page resources, 'Load More', options
  end

  def search_form(record, live_search:)
    options = {
      url: url_for,
      class: 'search-form',
      html: { autocomplete: :off }
    }

    if live_search
      options[:remote] = true
      options[:html][:data] = {
        controller: 'search',
        target: 'search.form'
      }
    end

    search_form_for record, options do |f|
      yield f
    end
  end
end
