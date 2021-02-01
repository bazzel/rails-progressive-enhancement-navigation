# frozen_string_literal: true

class ReadmeComponent < ViewComponent::Base
  SNIPPETS_ROOT = 'docs/snippets'

  attr_reader :id

  def initialize(id:)
    @id = id
  end

  def body
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(file.read).html_safe
  end

  def render?
    file.present?
  end

  private

  def file
    Rails.root.join(SNIPPETS_ROOT, id).each_child.find do |f|
      f.basename.to_s == 'README.md'
    end
  end
end
