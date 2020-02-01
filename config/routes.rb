Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "campaings", to: "campaigns#index"
  get "campaings/:id", to: "campaigns#show"
  get "campaigns/new", to: "campaigns#new"
  post "campaigns", to: "campaigns#create"

  get "users", to: "users#index"
  get "users/:id", to: "users#show"
  get "users/new", to: "users#new"
  post "users", to: "users#create"
  get "users/:id/edit", to: "users#edit"
  patch "users/:id", to: "users#update"
  delete "users/:id", to: "users#destroy"


  resources :campaigns, only: [:index, :new, :create, :show]
  resources :users
end
