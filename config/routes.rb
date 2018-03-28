Rails.application.routes.draw do
  get 'site/about'
  get 'site/contact'

 
  get '/about' => 'site#about' 
  get '/contact' => 'site#contact'

  resources :profiles
  devise_for :users
  get 'thankyou/index'
  get '/thankyou' => 'thankyou#index'
  get 'payment/index'
  get '/payment' => 'payment#index'
  get 'cart/index'
  get '/cart' => 'cart#index'
  get '/cart/clear'=> 'cart#clearCart'
  get '/cart/:id' => 'cart#add'
  get '/admin' => 'user#admin_login'
  get '/logout' => 'user#logout'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  resources :orders
  resources :products
  root 'site#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
