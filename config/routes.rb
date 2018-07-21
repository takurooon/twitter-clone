Rails.application.routes.draw do

  resources :posts
  resources :home
  root to: 'home#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users

end
