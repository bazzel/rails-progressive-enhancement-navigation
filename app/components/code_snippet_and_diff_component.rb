# frozen_string_literal: true

class CodeSnippetAndDiffComponent < ViewComponent::Base
  attr_reader :code_snippet

  delegate :name, :history, to: :code_snippet

  def initialize(code_snippet:)
    @code_snippet = code_snippet
  end

  def diff?
    history.any?(&:diff?)
  end
end
