Rails.application.routes.draw do
  resources :tasks
  resources :contacts
  resources :job_applications
  resources :jobs
  resources :organizations
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
