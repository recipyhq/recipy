class Api::UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def info
    begin
      current_user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json, status: :not_found
      return
    end

    render :json => {
      firstname: current_user.first_name,
      lastname: current_user.last_name,
      email: current_user.email,
      url: current_user.avatar.attached? ? rails_blob_url(current_user.avatar) : nil
    }.as_json
  end
end
