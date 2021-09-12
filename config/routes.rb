Rails.application.routes.draw do
  resources :tasks
  resources :contacts
  resources :job_applications
  resources :jobs, only: [:index,:show,:create]
  resources :organizations, only: [:index,:show,:create]
  #resources :users
  post "/signup",to: "users#create"
  get "/profile",to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # delete "/delete_account", to "users#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
