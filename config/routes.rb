Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  resources :services do
    resources :bookings, only: [:new, :create]
  end

  resources :clubs, only: [:index, :new, :create, :show, :destroy, :update, :edit] do
    resources :subscriptions, only: [:new, :create] do
    resources :club_reviews, only: [:new, :create]
    end
  end
  resources :subscriptions, only:[:index, :show]
end
