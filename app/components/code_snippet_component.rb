# frozen_string_literal: true

class CodeSnippetComponent < ViewComponent::Base
  SNIPPETS_ROOT = 'docs/snippets'

  attr_reader :sample_file

  delegate :basename, to: :sample_file

  def initialize(sample_file:)
    @sample_file = sample_file
  end

  private

  alias title basename

  def snippet
    CodeRay.highlight_file(sample_file, line_numbers: :table).html_safe
  end

  def previous_sample_files
    current_id = sample_file.dirname.basename.to_s.to_i
    previous_ids = (1..(current_id - 1))

    previous_ids.map do |id|
      next unless (file = Rails.root.join(SNIPPETS_ROOT, id.to_s, basename)).exist?

      file
    end.compact
  end
end
