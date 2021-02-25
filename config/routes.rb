Rails.application.routes.draw do
  devise_for :users
  root to: "matches#index"
  resources :matches
  resources :mains
  resources :profiles
  resources :squares
  resources :huntings
  resources :companies do
    resources :recruitments do
      resources :huntings
    end
  end
end
