Rails.application.routes.draw do
  resources :tasks, only: [:destroy,:update,:create]
  resources :contacts, only: [:destroy,:update,:create]
  resources :job_applications, only: [:index,:update,:create]
  resources :jobs, only: [:index,:create]
  resources :organizations, only: [:index,:show,:create]
  
  post "/signup",to: "users#create"
  get "/profile",to: "users#show"
  patch "/profile", to: "users#update"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # delete "/delete_account", to "users#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
