# frozen_string_literal: true

require "test_helper"

class PopupComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    # Arrange
    name = "example_name"
    title = "Example Title"
    body_content = "This is the body of the popup."

    # Act
    component = PopupComponent.new(name: name, title: title).tap do |component|
      component.with_body { body_content }
    end
    render_inline(component)

    # Assert
    assert_text title
    assert_text body_content
  end
end
