Rails.application.routes.draw do
  root to: 'home#index'
  resources :users, only: [:index, :show, :create]
  post '/login', to: 'authentication#login'
  get '/profile', to: 'users#profile'
  resources :lists
  resources :items
end
