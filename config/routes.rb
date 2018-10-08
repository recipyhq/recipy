require 'sidekiq/web'

Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :administrators, ActiveAdmin::Devise.config

  namespace :admin do
    authenticate :administrator do
      mount Sidekiq::Web => '/sidekiq'
    end
  end

  scope '(:locale)', locale: Regexp.union(I18n.available_locales.map(&:to_s)) do
    devise_for :users

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

    namespace :api do
      mount_devise_token_auth_for 'User', at: 'users'

      unauthenticated :user do
      end

      authenticated :user do
      end
    end
  end
end
