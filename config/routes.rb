Rails.application.routes.draw do
  resources :suffers
  resources :patients
  resources :issues, only: [:index, :show]
  resources :symptoms, only: [:index, :show]
  resources :diagnoses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
