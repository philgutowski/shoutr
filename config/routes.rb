Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  get "/sign_up", to: "users#new"
  root to: 'sessions#new'
end
