Rails.application.routes.draw do
  resources :users, only: [:create]
  post 'login', to: 'authentication#login'
  get '/profile', to: 'users#profile'
  resources :lists
  resources :items
end
