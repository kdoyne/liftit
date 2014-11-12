Rails.application.routes.draw do
  
  root"welcome#index"

  resources :users, only: [:new, :create, :edit, :update, :destroy, :show]

  get "/sessions", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#delete"

end
