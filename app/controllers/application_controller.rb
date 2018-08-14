class ApplicationController < ActionController::Base
  include Pundit

  after_action :verify_authorized, except: :index, unless: :disable_pundit_checks?
  after_action :verify_policy_scoped, only: :index, unless: :disable_pundit_checks?

  def disable_pundit_checks?
    is_a?(ActiveAdmin::BaseController) || is_a?(DeviseController)
  end

  def set_admin_locale
    I18n.locale = :en
  end
end
