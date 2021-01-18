# frozen_string_literal: true

class CodeSnippetComponent < ViewComponent::Base
  attr_reader :code_snippet

  delegate :snippet, to: :code_snippet

  def initialize(code_snippet)
    @code_snippet = code_snippet
  end
end
