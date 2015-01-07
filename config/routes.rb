Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # namespace :admin do
  #   get 'moderator/index'
  # end

  devise_for :users #, path_names: {sign_in: "login", sign_out: "logout", registration: 'register'}
  resources :users
  root 'home#index'
  get 'info', :to => 'home#info'

end
