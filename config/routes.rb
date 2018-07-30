Rails.application.routes.draw do

  root to: 'home#index'
  resources :posts
  resources :home

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy, :show]

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end
