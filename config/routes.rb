Rails.application.routes.draw do
  devise_for :users
  root to: "mains#index"
  resources :matches
  resources :mains
  resources :profiles
  resources :companies
end
