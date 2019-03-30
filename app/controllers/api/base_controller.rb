module API
end
class Api::BaseController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  respond_to :json
end
