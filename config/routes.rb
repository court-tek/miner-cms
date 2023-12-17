Rails.application.routes.draw do
  namespace :admin do
    resources :dashboard, only: [:index]
    resources :menu_categories, only: [:index, :new, :edit, :create, :update, :destroy]
    resources :menu_items
  end
  # resource pages
  resources :pages, only: [:new, :show, :edit, :create, :update, :destroy]

  # Defines the root paths for authentication
  resource :registration, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  #  resource :password_reset, only: [:new, :create, :edit, :update]
  #  resource :password, only: [:edit, :update]

  # non resourcefull routes for admin
  
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
