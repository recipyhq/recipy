class ErrorsController < ApplicationController
  before_action :skip_authorization
  layout 'errors'

  def not_found
    render(:status => 404)
  end

  def not_found
    render(:status => 500)
  end
end
