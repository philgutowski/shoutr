require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create] do
    resource :following_relationship, only: [:create, :destroy]
  end
  resources :shouts, only: [:create]
  resources :text_subjects, only: [:create]
  resources :image_subjects, only: [:create]
  resource :following, only: [:show]
  resource :followers, only: [:show]
  resource :search, only: [:show]

  get "/sign_up", to: "users#new"
  get "/sign-in", to: "sessions#new"

  constraints Monban::Constraints::SignedIn.new do
    get "/", to: "dashboards#show", as: :dashboard
  end
  root to: 'homes#show'
  get "/:username", to: "users#show", as: :user
end
