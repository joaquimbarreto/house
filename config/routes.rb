Rails.application.routes.draw do
  # get 'session/new'
  # get 'session/create'
  # get 'session/destroy'
  # sessions management
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome/index'
  resources :suffers
  resources :patients
  resources :issues, only: [:index, :show]
  resources :symptoms, only: [:index, :show]
  resources :diagnoses
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
