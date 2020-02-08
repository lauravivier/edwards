Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :campaigns, only: [:index, :new, :create, :show]
  resources :influencers, only: [:index, :new, :edit, :update, :create, :show]
  resources :profiles
end
