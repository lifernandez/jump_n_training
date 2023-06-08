Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :create]
  resources :trainers, only: [:index, :show, :new, :create] do
    resources :services, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :show, :new, :create]
  end
end 
  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end
end
