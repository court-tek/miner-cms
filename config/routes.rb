Rails.application.routes.draw do
  # Defines the paths for pages
  resources :pages, only: [:new, :show, :edit, :create, :update, :destroy]
  
  # Defines the paths for authentication
  namespace :auth do 
    resource :registration, only: [:new, :create]
    resource :session, only: [:new, :create, :destroy]
    resource :password_reset, only: [:new, :create, :edit, :update]
    # resources :password, only: [:edit, :update]
  end
  
  # Defines the paths for non resourcefull routes for admin
  namespace :admin do 
    get 'dashboard', to: 'dashboard#index'
    get 'food_categories', to: 'food_categories#index'
    get 'food_categories/new', to: 'food_categories#new'
    get 'food_categories/edit', to: 'food_categories#edit'
    resources :food_items
  end

  # Defines the pages path route ("/")
  get 'food', to: 'pages#index'
  get 'about', to: 'pages#about'
  # get 'waitlist', to: 'pages#waitlist'
  get 'promotions', to: 'pages#promotions'
  # get 'giftcards', to: 'pages#giftcards'

  # Defines the root path route ("/")
  root "landing#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

end
