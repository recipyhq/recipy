class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Pundit

  before_action :authenticate_user!
  after_action :verify_policy_scoped, only: :index
  after_action :verify_authorized, except: :index
end
