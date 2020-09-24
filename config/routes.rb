Rails.application.routes.draw do
  get "/temp", to: 'application#temp'
  resources :comments
  resources :categories
  resources :posts
  resources :users
  post "/signup", to: "users#signup"
  post "/login", to: "users#login"
  get "/autologin", to: "users#autologin"
  get "/logout", to: "users#logout"
  patch "/profile", to: "users#profile"
  
end
