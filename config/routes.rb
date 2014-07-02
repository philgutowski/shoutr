require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :destroy] do
    resource :following_relationship, only: [:create, :destroy]
  end
  resources :shouts, only: [:create]
  resources :text_subjects, only: [:create]
  resource :following, only: [:show]
  resource :followers, only: [:show]

  get "/sign_up", to: "users#new"

  constraints Monban::Constraints::SignedIn.new do
    get "/", to: "dashboards#show", as: :dashboard
  end
  root to: 'sessions#new'
end
