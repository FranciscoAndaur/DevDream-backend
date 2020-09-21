Rails.application.routes.draw do
  
  resources :comments
  resources :categories
  resources :posts
  resources :users, only: [:create]
end
