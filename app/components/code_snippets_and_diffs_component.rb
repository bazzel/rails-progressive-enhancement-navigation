# frozen_string_literal: true

class CodeSnippetsAndDiffsComponent < ViewComponent::Base
  SNIPPETS_ROOT = 'docs/snippets'

  attr_reader :id

  def initialize(id:)
    @id = id
  end

  private

  def files
    Rails.root.join(SNIPPETS_ROOT, id).each_child.reject do |f|
      f.directory? || f.basename.to_s.start_with?('_')
    end
  end

  def code_snippets
    files.map { |f| CodeSnippet.new(file: f) }
  end
end
