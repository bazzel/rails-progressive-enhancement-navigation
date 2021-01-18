# frozen_string_literal: true

class ToggleComponent < ViewComponent::Base
  include ViewComponent::SlotableV2

  renders_many :items, -> (title, options = {}) do
    Toggle::ItemComponent.new(title: title, name: id, options: options)
  end

  private

  def id
    "toggle-#{object_id}"
  end
end
