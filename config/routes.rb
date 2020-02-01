Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  root to: 'pages#home'

  # resources :campaigns, only: [:index, :new, :create, :show]
  # resources :users
end
