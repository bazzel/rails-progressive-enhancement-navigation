# frozen_string_literal: true

class DiffComponent < ViewComponent::Base
  attr_reader :code_snippet

  delegate :basename, :history, :diff, :diff?, to: :code_snippet

  def initialize(code_snippet)
    @code_snippet = code_snippet
  end

  def active_tab
    @active_tab ||= history.reverse.find(&:diff?)
  end
end
