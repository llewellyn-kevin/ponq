Rails.application.routes.draw do
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  get 'welcome', to: 'session#welcome'

  resources :users, only: [:new, :create]
  resources :clubs

  root 'session#welcome'
end
