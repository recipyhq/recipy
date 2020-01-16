require 'sidekiq/web'

Rails.application.routes.draw do
  get '/epitech-experience', to: 'epitech_exp#index', as: 'epiexp_index'
  post '/epitech-experience', to: 'epitech_exp#create', as: 'epiexp_create_meal_plan'
  resources :landing_pages, path: '/', :only => [:index, :new, :create]

  get '/privacy_policy', to: "landing_pages#privacy_policy"
  get '/legal_notice', to: "landing_pages#legal_notice"
  get 'sitemap.xml' => 'sitemaps#index', :defaults => { :format => 'xml' }

  ActiveAdmin.routes(self)
  devise_for :administrators, ActiveAdmin::Devise.config

  namespace :admin do
    authenticate :administrator do
      mount Sidekiq::Web => '/sidekiq'
    end
  end

  scope 'beta' do
    # devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
    devise_for :users, controllers: {
      omniauth_callbacks: 'users/omniauth_callbacks',
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      confirmations: 'users/confirmations',
      passwords: 'users/passwords',
      unlocks: 'users/unlocks',
    }

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
        get ':id' => 'home#show', as: :show_producer
        get ':id/my_profile' => "home#show", as: :show_producer_profile
        patch 'createproducer' => 'home#update'
      end

      # resources :authors
      resources :meal_plans, :only => [:index, :show, :update]
      post '/meal_plans/create_list', to: "meal_plans#create_list", as: 'meal_plan_create_list'
      # resources :meals
      resources :shopping_lists
      resources :recipes
      resources :point_of_sales
      resources :products, :only => [:new, :create, :edit, :update, :destroy]
      resources :notebooks
      resources :ingredients, only: [:new, :create]

      resources :recipes, param: :id do
        post '/feedback', to: 'scores#set_value_and_content', as: 'feedback'
        post 'add_ingredients_to_list' => "recipes#add_ingredients_to_list"
        post 'add_ingredients_to_new_list' => "recipes#add_ingredients_to_new_list"
        post 'add_to_notebook' => "recipes#add_to_notebook"
      end

      resources :meal_plans, param: :id do
        post 'reload' => "meal_plans#reload_day_plan"
      end

      get 'author/:id' => "users/base#show_author", as: 'author'
      get 'search' => "search#index"
      post 'add_recipe' => "notebooks#add_recipe"
      post 'follow_producer' => "users/base#follow_producer"
      post 'unfollow_producer' => "users/base#unfollow_producer"
      post 'remove_recipe' => "notebooks#remove_recipe"
      get 'my_recipes' => "recipes#show_user_recipes"
      get 'liked_producers' => "users/base#show_liked_producers"
      get 'edit_preferences' => "users/base#edit_preferences"
      post 'update_like_ingredients' => "users/base#update_like_ingredients"
      post '/update_allergens', to: 'users/base#update_allergens'
      post 'create_notebook' => 'recipes#create_notebook'
    end
  end

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'users', controllers: {
      registrations: 'users/registrations',
    }

    unauthenticated :user do
    end

    authenticated :user do
    end

    scope :user do
      get 'info', to: 'user#info'
      post '/follow_producer', to: 'user#follow_producer'
      post '/unfollow_producer', to: 'user#unfollow_producer'
      post '/update_preferences', to: 'user#update_like_ingredients'
      get 'author', param: :id, to: "user#show_author"
    end

    resources :meal_plans, :only => [:index, :show, :update]
    post '/meal_plans/create_list', to: "meal_plans#create_list", as: 'meal_plan_create_list'

    resources :meal_plans, param: :id do
      post 'reload' => "meal_plans#reload_day_plan"
    end

    resources :recipes, param: :id do
      post '/feedback', to: 'scores#set_value_and_content', as: 'feedback'
      post 'add_ingredients_to_list' => "recipes#add_ingredients_to_list"
    end
    resources :quantity_type
    resources :ingredients
    resources :point_of_sales
    resources :products
    resources :shopping_lists, param: :id do
      post 'update_item_checkbox', to: 'shopping_lists#update_item_checkbox'
    end
    resources :notebooks
    resources :notebooks, param: :id do
      post 'add_recipe' => "notebooks#add_recipe"
      post 'remove_recipe' => "notebooks#remove_recipe"
    end
    get 'my_notebooks' => "notebooks#user_notebook_id"
    get 'search' => "search#index"
    get 'my_recipes' => "recipes#show_user_recipes"
  end

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#external_server_error", :via => :all
end
