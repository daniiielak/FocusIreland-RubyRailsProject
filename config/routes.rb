Rails.application.routes.draw do
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
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
