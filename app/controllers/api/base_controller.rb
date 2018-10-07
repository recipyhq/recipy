module API
  class BaseController < ApplicationController
    include DeviseTokenAuth::Concerns::SetUserByToken

    skip_before_action :verify_authenticity_token
  end
end
