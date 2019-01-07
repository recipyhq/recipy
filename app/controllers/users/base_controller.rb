class Users::BaseController < ApplicationController
  def show
    find_user
  end

  def edit
    find_user
  end

  def update
    find_user
    puts "INSECT USER : " + @user.inspect
    @user.image.attach(params[:image])
    if @user.update(user_params)
      redirect_to edit_user_registration
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
