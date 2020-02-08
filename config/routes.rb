Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :campaigns, only: [:index, :new, :edit, :create, :show]
  resources :profiles
end
