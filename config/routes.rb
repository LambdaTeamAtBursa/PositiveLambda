Rails.application.routes.draw do
  namespace :admin do
    get 'moderator/index'
  end


  devise_for :users #, path_names: {sign_in: "login", sign_out: "logout", registration: 'register'}
  root 'home#index'
  get 'info', :to => 'home#info'

  resources :cyte_categories

end
