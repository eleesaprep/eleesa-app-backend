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
        resources :progresses, only: [:index, :show, :create, :destroy]
      end
      resources :enrollments, only: [:index, :show, :create, :destroy]
      resources :responses, only: [:index, :show, :create, :destroy]
      resources :courses, only: [:index, :show, :create, :new, :destroy, :update] do 
        resources :materials, only: [:index, :show, :create, :destroy]
      end
      resources :instructors, only: [:index, :show, :create, :destroy]
      resources :quizzes, only: [:index, :show, :create, :new, :destroy, :update]
      resources :questions, only: [:index, :show, :create, :new, :destroy, :update] do
        resources :options, only: [:index, :show, :create, :new, :destroy, :update]
      end
    end
  end
end
