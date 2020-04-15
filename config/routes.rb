Rails.application.routes.draw do
  root "welcome#index"
  resources :characters
  resources :generators
  get "/login", to: "users#login"
  get "/signup", to: "users#signup"
end
