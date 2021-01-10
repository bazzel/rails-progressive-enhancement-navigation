# frozen_string_literal: true

class ModalComponent < ViewComponent::Base
  include ViewComponent::SlotableV2

  renders_one :controller, Modal::ControllerComponent
  renders_one :body, Modal::BodyComponent
  renders_one :footer, Modal::FooterComponent

  attr_reader :title

  def initialize(title:)
    @title = title
  end
end
