Rails.application.routes.draw do
  resources :dashboards
  get "/users/stay_logged_in", to: "users#stay_logged_in"
  resources :widget_dashes
  resources :widgets
  resources :themes
  resources :users
  post "/login", to: "users#login" 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
