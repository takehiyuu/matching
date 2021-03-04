Rails.application.routes.draw do
  devise_for :users
  root to: "mains#index"
  resources :matches
  resources :mains
  resources :profiles
  resources :squares
  resources :huntings
  resources :companies do
    resources :recruitments
  end
end
