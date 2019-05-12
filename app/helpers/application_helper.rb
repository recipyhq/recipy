# rubocop:disable all
module ApplicationHelper
  def user_avatar(user, size)
    if user.image.attached?
      user.image.variant(resize: "#{size}x#{size}!")
    end
  end

  def image_url(image)
    if (image.attached?)
      rails_blob_path(image, disposition: "attachment")
    else
      nil
    end
  end
end
# rubocop:enable all
