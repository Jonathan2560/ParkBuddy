Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :garages, only: [:show, :index, :new, :create, :destroy] do
    resources :reservations, only: [:show, :create]
  end
  resources :reservations, only: [:index, :delete]
end
