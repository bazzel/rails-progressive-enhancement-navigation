module ApplicationHelper
  def link_to_load_more(resources, type)
    return unless type
    return unless resources.respond_to?(:next_page)

    options = {
      class: 'load-more px-5 py-4 bg-white border-t border-r border-b border-l border-gray-300 flex items-center first:rounded-t last:rounded-b hover:shadow-xl'
    }

    options[:remote] = true if %w[more endless].include?(type)
    options[:data] = { controller: 'infinite-scroll' } if type == 'endless'

    link_to_next_page resources, 'Load More', options
  end
end
