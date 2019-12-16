Rails.application.routes.draw do
  devise_for :users
  resources :adverts
  namespace :users do
    resources :adverts
  end
  root "adverts#index"
end
