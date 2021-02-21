Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/chirps", to:"chirps#index"
  root "chirps#index"
  get "/index", to:"chirps#index"
  resources :chirps
  # get "/chirps/:id", to: "chirps#show"
  # get "/chirps/new", to: "chirps#new"

end
