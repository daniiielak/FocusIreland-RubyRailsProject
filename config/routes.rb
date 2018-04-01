Rails.application.routes.draw do

  get 'site/about'
  get 'site/contact'

 
  get '/about' => 'site#about' 
  get '/contact' => 'site#contact'

  get '/admin' => 'user#admin_login'
  get '/logout' => 'user#logout'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  
  resources :profiles
  devise_for :users

  resources :products
  resources :order_items
  resource :carts, only: [:show]
  resource :payments, only: [:show]
  resource :thankyous, only: [:show]
  #get '/thankyous'=> 'thankyous#index'
  
  root 'site#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
