module ApplicationHelper
  def user_avatar(user, size)
    if user.image.attached?
      user.image.variant(resize: "#{size}x#{size}!")
    end
  end
end
