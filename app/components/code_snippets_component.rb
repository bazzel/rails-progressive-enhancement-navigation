# frozen_string_literal: true

class CodeSnippetsComponent < ViewComponent::Base
  SNIPPETS_ROOT = 'docs/snippets'

  attr_reader :id

  def initialize(id:)
    @id = id
  end

  def files
    Rails.root.join(SNIPPETS_ROOT, id).each_child.reject do |f|
      f.directory? || f.basename.to_s.start_with?('_')
    end
  end
end
