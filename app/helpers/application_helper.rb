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

  def current_page_class?(test_path)
    return 'uk-active' if current_page?(test_path)
    ''
  end
end
# rubocop:enable all
