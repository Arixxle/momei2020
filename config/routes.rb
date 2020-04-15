Rails.application.routes.draw do
  root "welcome#index"
  resources :characters
  resources :generators
  get "/login", to: "users#login"
  post "/login", to: "users#login_action"
  get "/logout", to: "users#logout"
  get "/signup", to: "users#signup"
  post "/signup", to: "users#registration"
end
