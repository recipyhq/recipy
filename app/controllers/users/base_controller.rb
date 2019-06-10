class Users::BaseController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_after_action :verify_authorized

  def show
    find_user
  end

  def edit
    find_user
  end

  def update
    find_user
    @user.image.attach(params[:image])
    if @user.update(user_params)
      redirect_to edit_user_registration
    end
  end

  def show_liked_producers
    @producers = current_user.liked_producers
    # redirect_to follow_producer_path
  end

  def follow_producer
    begin
      user = User.find(params[:user][:user_id])
    rescue ActiveRecord::RecordNotFound
      return
    end
    if user_signed_in?
      current_user.liked_producers << user
      redirect_to show_producer_path user.id
    end
  end

  def unfollow_producer
    begin
      user = User.find(params[:user][:user_id])
    rescue ActiveRecord::RecordNotFound
      return
    end
    if user_signed_in?
      current_user.liked_producers.destroy(user)
      redirect_to liked_producers_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :email, :encrypted_password, :image)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
