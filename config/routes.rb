Rails.application.routes.draw do

  resources :posts
  resources :home
  root to: 'home#index'


end
