Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :garages, only: [:show, :index, :new, :create, :destroy] do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [:destroy, :index, :show]

  resources :availibilities, only: :create

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
