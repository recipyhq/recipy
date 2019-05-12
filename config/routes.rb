require 'sidekiq/web'

Rails.application.routes.draw do
  resources :landing_pages, path: '/', :only => [:index, :new, :create]

  get '/privacy_policy', to: "landing_pages#privacy_policy"
  get '/legal_notice', to: "landing_pages#legal_notice"

  ActiveAdmin.routes(self)
  devise_for :administrators, ActiveAdmin::Devise.config

  namespace :admin do
    authenticate :administrator do
      mount Sidekiq::Web => '/sidekiq'
    end
  end

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  scope 'beta' do

    scope '(:locale)', locale: Regexp.union(I18n.available_locales.map(&:to_s)) do
      scope module: 'cook' do
        unauthenticated :user do
          root to: 'home#index', as: :unauthenticated_cook_root
        end

        authenticate :user do
          root to: 'home#index', as: :authenticate_cook_root
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
          root to: 'home#index', as: :authenticate_producer_root
        end

        authenticated :user do
          root to: 'home#index', as: :authenticated_producer_root
        end
        get 'createproducer' => 'home#new'
        get 'producer/:id' => 'home#show', as: :show_producer
        patch 'createproducer' => 'home#patch'
      end

      resources :shopping_lists
      resources :recipes
      resources :point_of_sales
      resources :products, :only => [:new, :create, :edit, :update]
      resources :notebooks
      resources :ingredients, only: [:new, :create]

      resources :recipes, param: :id do
        post '/feedback', to: 'scores#set_value_and_content', as: 'feedback'
        post 'add_ingredients_to_list' => "recipes#add_ingredients_to_list"
      end

      get 'search' => "search#index"
      post 'add_recipe' => "notebooks#add_recipe"
      post 'remove_recipe' => "notebooks#remove_recipe"
      get 'my_recipes' => "recipes#show_user_recipes"
    end
  end

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'users'

    unauthenticated :user do
    end

    authenticated :user do
    end

    resources :recipes, param: :id do
      post '/feedback', to: 'scores#set_value_and_content', as: 'feedback'
      post 'add_ingredients_to_list' => "recipes#add_ingredients_to_list"
    end
    resources :ingredients
    resources :point_of_sales
    resources :products
    resources :shopping_lists
    resources :notebooks
    resources :notebooks, param: :id do
      post 'add_recipe' => "notebooks#add_recipe"
      post 'remove_recipe' => "notebooks#remove_recipe"
    end
    get 'search' => "search#index"

    get 'my_recipes' => "recipes#show_user_recipes"
  end


  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#external_server_error", :via => :all
end
