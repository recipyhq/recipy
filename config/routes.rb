Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  devise_for :users
  devise_for :producers

  ActiveAdmin.routes(self)

  scope module: 'users' do
    unauthenticated :users do
      root to: 'home#index', as: :unauthenticated_user_root
    end

    authenticate :users do
    end

    authenticated :users do
      root to: 'home#index', as: :authenticated_user_root
    end
  end

  scope module: 'producers', path: 'producer' do
    unauthenticated :producers do
      root to: 'home#index', as: :unauthenticated_producer_root
    end

    authenticate :producers do
    end

    authenticated :producers do
      root to: 'home#index', as: :authenticated_producer_root
    end
  end

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'users'
    mount_devise_token_auth_for 'Producer', at: 'producers'

    unauthenticated :users do
    end

    authenticated :users do
    end
  end
end
