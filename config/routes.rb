Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users #, path_names: {sign_in: "login", sign_out: "logout", registration: 'register'}
  resources :users
  root 'home#index'
  get 'info', :to => 'home#info'

end
