Rails.application.routes.draw do
  
  root"welcome#index"

  resources :users do
    resources :workouts do
      resources :exercises
    end
  end

  get "/sessions", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#delete"

end
