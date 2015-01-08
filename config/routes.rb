Rails.application.routes.draw do

  resources :cytes
  
  namespace :admin do
    get 'moderator/index'
  end

  devise_for :users #, path_names: {sign_in: "login", sign_out: "logout", registration: 'register'}
  root 'home#index'
  get 'info', :to => 'home#info'

end
