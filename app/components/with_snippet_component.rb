# frozen_string_literal: true

class WithSnippetComponent < ViewComponent::Base
  attr_reader :id

  def initialize(id)
    @id = id
  end
end
