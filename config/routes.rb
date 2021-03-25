Rails.application.routes.draw do
  resources :users
  resources :lists
  resources :items
end
