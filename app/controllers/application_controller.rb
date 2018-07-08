class ApplicationController < ActionController::Base
  include Pundit

  before_action :authenticate_user!, unless: :active_admin_controller?
  after_action :verify_policy_scoped, only: :index, unless: :active_admin_controller?
  after_action :verify_authorized, except: :index, unless: :active_admin_controller?
end
