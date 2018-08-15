class ApplicationController < ActionController::Base
  include Pundit

  with_options unless: :disable_pundit_checks? do
    after_action :verify_authorized, except: :index
    after_action :verify_policy_scoped, only: :index
  end

  def disable_pundit_checks?
    devise_controller? || active_admin_controller? || active_admin_devise_controller?
  end

  def active_admin_controller?
    is_a?(ActiveAdmin::BaseController)
  end

  def active_admin_devise_controller?
    self.class.to_s.match(/^ActiveAdmin::Devise::/).present?
  end

  def set_admin_locale
    I18n.locale = :en
  end
end
