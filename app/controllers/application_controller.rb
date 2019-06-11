# rubocop:disable all
class ApplicationController < ActionController::Base
  include Pundit
  include Localizable

  skip_before_action :verify_authenticity_token, if: :api_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?


  with_options unless: :disable_pundit_checks? do
    after_action :verify_authorized, except: :index
    after_action :verify_policy_scoped, only: :index
  end

  def api_controller?
    self.class.to_s.match(/^DeviseTokenAuth::/).present? || is_a?(Api::BaseController)
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

  protected

  def configure_permitted_parameters
  end

  # def after_sign_out_path_for(resource_or_scope)
  #   URI.parse(request.referer).path if request.referer
  # end
  #
  # def after_sign_in_path_for(resource_or_scope)
  #   params[:next] || authenticated_cook_root_path
  # end
end
# rubocop:enable all
