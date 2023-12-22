# frozen_string_literal: true

class PopupComponent < ViewComponent::Base
  renders_one :body
  def initialize(name:, title: )
    @name = name
    @title = title
  end

end
