Rails.application.routes.draw do
  devise_for :users
  resources :stockstestapps

  devise_scope :user do  
    # get '/users/sign_out2' => 'devise/sessions#destroy'

    get "home/about"
    root "home#index"
  end
end
