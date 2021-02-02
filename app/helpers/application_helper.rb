module ApplicationHelper
  EXAMPLES_COUNT = 6

  def nav_items
    safe_join(EXAMPLES_COUNT.times.map do |i|
      url = snippet_path(i.next)
      class_names = ['header-nav-link']
      class_names << 'active' if current_page?(url)

      link_to t(i.next, scope: 'examples'), url, class: class_names
    end)
  end

  def with_snippet
    render(WithSnippetComponent.new(params[:id])) { yield }
  end
end
