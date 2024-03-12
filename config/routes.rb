Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  post 'step2', to: 'garages#step2'
  post 'step3', to: 'garages#step3'
  post 'step4', to: 'garages#step4'

  resources :garages, only: [:show, :index, :new, :create, :destroy] do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:destroy, :index, :show]
  resources :availibilities, only: :create
end
