module ApplicationHelper
  EXAMPLES_COUNT = 6

  def nav_items
    safe_join(EXAMPLES_COUNT.times.map do |i|
      link_to t(i.next, scope: 'examples'),
              example_path(i.next),
              class: 'header-nav-link'
    end)
  end

  def with_snippet
    render(WithSnippetComponent.new(params[:id])) { yield }
  end
end
