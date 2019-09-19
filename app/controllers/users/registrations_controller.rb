# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token

  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    if api_request?
      @user = User.create(sign_up_params)
      respond_to do |format|
        format.json {
          @user.save ? (render :json => {:state => {:code => 0}, :data => @user }) : (render :json => {:state => {:code => 1, :messages => @user.errors.full_messages} })
        }
      end
    else
      super
    end
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :first_name, :last_name, :newsletters,
      :remember_me,
    ])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :avatar])
  end

  def after_sign_up_path_for(resource)
    '/beta/users/sign_in'
  end

  def after_sign_out_path_for(resource_or_scope)
    '/beta/users/sign_in'
  end

  def after_inactive_sign_up_path_for(resource)
    '/beta/users/sign_in'
  end

  def after_update_path_for(resource)
    '/beta/users/edit'
  end

  def sign_up_params
    params.require(:user).permit(:email, :password, :first_name, :password_confirmation, :last_name)
  end

  def api_request?
    request.format.json? || request.format.xml?
  end
end
