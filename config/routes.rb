Rails.application.routes.draw do
  devise_for :users
  resources :adverts

  namespace :users do
    resources :adverts
  end
  resources :favorites, only: [:index, :create, :destroy]
  root "adverts#index"
end
