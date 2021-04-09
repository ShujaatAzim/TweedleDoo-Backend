Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]
  post '/login', to: 'authentication#create'
  get '/profile', to: 'users#profile'
  resources :lists
  resources :items
end
