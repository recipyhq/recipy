class ErrorsController < ApplicationController
  before_action :skip_authorization
  layout 'errors'

  def not_found
    render(:status => 404)
  end

  def external_server_error
    render(:status => 500)
  end
end
