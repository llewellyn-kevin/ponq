Rails.application.routes.draw do
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  post 'logout', to: 'session#logout'
  get 'welcome', to: 'session#welcome'

  resources :users, only: [:new, :create]
  namespace :user do 
    resources :clubs, only: [:index, :show]
  end
  resources :clubs


  root 'session#welcome'
end
