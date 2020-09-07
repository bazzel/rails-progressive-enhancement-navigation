module ApplicationHelper
  def link_to_load_more(resources, type)
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
end
