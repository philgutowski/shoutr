require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:create, :destroy]
  resources :users, only: [:new, :create] do
    resource :following_relationship, only: [:create, :destroy]
  end
  resources :shouts, only: [:create]
  resources :text_subjects, only: [:create]
  resources :image_subjects, only: [:create]
  resource :following, only: [:show]
  resource :followers, only: [:show]

  get "/sign_up", to: "users#new"
  get "/:username", to: "users#show", as: :user

  constraints Monban::Constraints::SignedIn.new do
    get "/", to: "dashboards#show", as: :dashboard
  end
  root to: 'sessions#new'
end
