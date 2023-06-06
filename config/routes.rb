Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/trainers", to: ""
  # get "/bookings", to: ""
  # get "/clubs", to: ""

end
