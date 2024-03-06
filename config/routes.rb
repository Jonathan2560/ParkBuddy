Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :garages, only: [:show, :index, :new, :create, :destroy] do
    resources :reservations, only: [:index, :new, :create]
  end
  resources :reservations, only: [:destroy, :show]
end
