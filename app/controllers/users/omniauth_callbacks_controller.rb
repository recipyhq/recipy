class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
