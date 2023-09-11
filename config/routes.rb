Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resource :users, only: [:create]
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :destroy] do
        resources :rentals, only: [:index, :show, :create, :destroy]
      end
      resources :cars, only: [:index, :show, :create, :new, :destroy, :update]
      resources :payments
    end
  end
end
