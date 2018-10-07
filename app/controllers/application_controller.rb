class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Pundit
  include Localizable

  skip_before_action :verify_authenticity_token, if: :api_controller?

  with_options unless: :disable_pundit_checks? do
    after_action :verify_authorized, except: :index
    after_action :verify_policy_scoped, only: :index
  end

  def api_controller?
    self.class.to_s.match(/^DeviseTokenAuth::/).present? || is_a?(API::BaseController)
  end

  def active_admin_controller?
    is_a?(ActiveAdmin::BaseController)
  end

  def active_admin_devise_controller?
    self.class.to_s.match(/^ActiveAdmin::Devise::/).present?
  end

  private

  def disable_pundit_checks?
    devise_controller? || active_admin_controller? || active_admin_devise_controller?
  end
end
