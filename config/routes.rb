Rails.application.routes.draw do
  devise_for :users
  root to: "matches#index"
  resources :matches
  resources :mains
  resources :profiles
  resources :squares
  resources :companies do
    resources :recruitments
  end
end
