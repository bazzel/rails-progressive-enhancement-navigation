# frozen_string_literal: true

class CodeSnippetComponent < ViewComponent::Base
  attr_reader :sample_file

  def initialize(sample_file:)
    @sample_file = sample_file
  end

  private

  def title
    File.basename(sample_file)
  end

  def snippet
    CodeRay.highlight_file(root.join(sample_file), line_numbers: :table).html_safe
  end

  def root
    Rails.root.join('docs/snippets')
  end
end
