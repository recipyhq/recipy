module Localizable
  extend ActiveSupport::Concern

  included do
    before_action :set_locale

    rescue_from I18n::InvalidLocale, with: :invalid_locale
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def invalid_locale
    redirect_to action: action_name, controller: controller_path, locale: I18n.default_locale
  end
end
