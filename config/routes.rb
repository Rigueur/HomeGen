Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "pages#home"

  # Defines the routes for flats

  resources :flats do
    resources :bookings, only: [:new, :create]
    resources :favorites, only: [:create]
  end

  resources :users do
    resources :favorites, only: [:index]
  end

  # Defines the routes for bookings
  resources :bookings, only: [:show, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end

  resources :users do
    resources :bookings, only: [:index]
  end

  patch  "bookings/:id/cancel", to: "bookings#cancel", as: :cancel_booking
end
