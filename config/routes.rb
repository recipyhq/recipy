require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :administrators, ActiveAdmin::Devise.config
  devise_for :users, path: ':locale/users'

  ActiveAdmin.routes(self)

  namespace :admin do
    authenticate :administrator do
      mount Sidekiq::Web => '/sidekiq'
    end
  end

  scope module: 'cook', path: ':locale' do
    unauthenticated :user do
      root to: 'home#index', as: :unauthenticated_cook_root
    end

    authenticate :user do
    end

    authenticated :user do
      root to: 'home#index', as: :authenticated_cook_root
    end
  end

  scope module: 'producer', path: ':locale/producer' do
    unauthenticated :user do
      root to: 'home#index', as: :unauthenticated_producer_root
    end

    authenticate :user do
    end

    authenticated :user do
      root to: 'home#index', as: :authenticated_producer_root
    end
  end

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'users'

    unauthenticated :user do
    end

    authenticated :user do
    end
  end

  root to: redirect(I18n.default_locale.to_s)
end
