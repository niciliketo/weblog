# frozen_string_literal: true

require "test_helper"

class PostComponentTest < ViewComponent::TestCase
  def test_component_renders_post_title
    render_inline(PostComponent.new(post: posts(:one)))
    assert_text posts(:one).title
  end
end
