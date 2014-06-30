require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show] do
    resource :following_relationship, only: [:create]
  end
  resources :shouts, only: [:create]

  get "/sign_up", to: "users#new"

  constraints Monban::Constraints::SignedIn.new do
    get "/", to: "dashboards#show", as: :dashboard
  end
  root to: 'sessions#new'
end
