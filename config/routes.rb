Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  devise_for :users

  ActiveAdmin.routes(self)

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
  end
end
