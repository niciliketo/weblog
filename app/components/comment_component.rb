# frozen_string_literal: true

class CommentComponent < ViewComponent::Base
  def initialize(comment:)
    @comment = comment
  end

  def commenter
    @comment[:user]
  end

  def commenter_name
    @comment[:user]
  end

  # def avatar
  #   commenter.avatar_image_url
  # end

  def formatted_body
    simple_format(@comment[:body])
  end

  private

  attr_reader :comment
end
