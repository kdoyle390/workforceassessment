Rails.application.routes.draw do
  resources :shifts
  resources :users
  resources :organizations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :home 
  root 'home#index'
  get  'home/login'
end
