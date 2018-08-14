Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  devise_for :users

  ActiveAdmin.routes(self)

  scope module: 'cook' do
    unauthenticated :users do
      root to: 'home#index', as: :unauthenticated_cook_root
    end

    authenticate :users do
    end

    authenticated :users do
      root to: 'home#index', as: :authenticated_cook_root
    end
  end

  scope module: 'producer', path: 'producer' do
    unauthenticated :users do
      root to: 'home#index', as: :unauthenticated_producer_root
    end

    authenticate :users do
    end

    authenticated :users do
      root to: 'home#index', as: :authenticated_producer_root
    end
  end

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'users'

    unauthenticated :users do
    end

    authenticated :users do
    end
  end
end
