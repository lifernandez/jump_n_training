Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'mybookings', to: 'pages#mybookings'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :create]

  resources :trainers, only: [:index, :show, :new, :create, :edit] do
    resources :services, only: [:index, :show, :new, :create, :edit, :destroy] do
      resources :bookings, only: [:index, :show, :new, :create]
    end
  end
  resources :bookings, only: [:destroy] do
    resources :reviews, only: [:new, :create]
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
