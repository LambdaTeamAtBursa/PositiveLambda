Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'
  
  devise_for :users #, path_names: {sign_in: "login", sign_out: "logout", registration: 'register'}
  resources :users
  
  resources :cytes
  resources :comments
  
  get 'info', :to => 'home#info'

  resources :cyte_categories
  resources :tags

  get 'search', to: 'search#search'
end
