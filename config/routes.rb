require 'sidekiq/web'

Rails.application.routes.draw do
  resources :recipes
  resources :landing_pages

  ActiveAdmin.routes(self)

  devise_for :administrators, ActiveAdmin::Devise.config

  namespace :landing_pages do
    unauthenticated :user do
      root to: 'landing_pages#index'
    end
  end

  namespace :admin do
    authenticate :administrator do
      mount Sidekiq::Web => '/sidekiq'
    end
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  scope '(:locale)', locale: Regexp.union(I18n.available_locales.map(&:to_s)) do
    scope module: 'cook' do
      unauthenticated :user do
        root to: 'home#index', as: :unauthenticated_cook_root
      end

      authenticate :user do
      end

      authenticated :user do
        root to: 'home#index', as: :authenticated_cook_root
      end
    end

    scope module: 'producer', path: '/producer' do
      unauthenticated :user do
        root to: 'home#index', as: :unauthenticated_producer_root
      end

      authenticate :user do
      end

      authenticated :user do
        root to: 'home#index', as: :authenticated_producer_root
      end
    end
    resources :recipes
  end

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'users'

    unauthenticated :user do
    end

    authenticated :user do
    end
    resources :recipes
    resources :ingredients
  end
end
