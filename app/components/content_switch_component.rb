# frozen_string_literal: true

class ContentSwitchComponent < ViewComponent::Base
  include ViewComponent::SlotableV2

  renders_many :link_tos, ContentSwitch::LinkToComponent
end
