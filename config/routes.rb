Rails.application.routes.draw do
  get 'dessert/index'
  get 'food/index'
  
  devise_for :users
  resources :books
  resources :educations
  resources :profiles
  resources :users

  root to: "users#index"
  
  resources :restaurants, only: [:index]
  
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
