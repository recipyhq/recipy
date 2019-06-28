class Api::UserController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def info
    begin
      current_user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json,
             status: :not_found
      return
    end

    render :json => {
      firstname: current_user.first_name,
      lastname: current_user.last_name,
      email: current_user.email,
      liked_producers: current_user.liked_producers,
      followed_users: current_user.followed_users,
      url: current_user.avatar.attached? ? rails_blob_url(current_user.avatar) : nil,
    }.as_json
  end

  def show_liked_producers
    @producers = current_user.liked_producers
  end

  def follow_producer
    begin
      producer = User.find(params[:producer_id])
      current_user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json,
             status: :not_found
      return
    end
    current_user.liked_producers << producer
    render :json => { Status: "OK", Cause: t("users.api.follow_ok") }.as_json,
           status: :ok
  end

  def unfollow_producer
    begin
      producer = User.find(params[:producer_id])
      current_user = User.find(params[:user_id])
    rescue ActiveRecord::RecordNotFound
      render :json => { Status: "KO", Cause: t("recipe.api.invalid_user_id") }.as_json,
             status: :not_found
      return
    end
    current_user.liked_producers.destroy(producer)
    render :json => { Status: "OK", Cause: t("users.api.follow_ko") }.as_json,
           status: :ok
  end
end
