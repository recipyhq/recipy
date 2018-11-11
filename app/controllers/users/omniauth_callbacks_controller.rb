class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  before_action :set_user

  def facebook
    omniauth_authentication(:facebook)
  end

  def twitter
    omniauth_authentication(:twitter)
  end

  def google_oauth2
    omniauth_authentication(:google)
  end

  def failure
    redirect_to root_path
  end

  private

  def set_user
    @user = User.from_omniauth(request.env['omniauth.auth'])
  end

  def omniauth_authentication(provider)
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: provider.to_s.humanize) if is_navigational_format?
    else
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to authenticated_cook_root_url
    end
  end
end
