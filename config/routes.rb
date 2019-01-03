Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  get 'welcome/index'
  resources :suffers
  resources :patients
  resources :issues, only: [:index, :show]
  resources :symptoms, only: [:index, :show]
  resources :diagnoses
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
