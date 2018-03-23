Rails.application.routes.draw do
  get 'thankyou/index'
  get '/thankyou' => 'thankyou#index'
  get 'payment/index'
  get '/payment' => 'payment#index'
  get 'cart/index'
  get '/cart' => 'cart#index'
  get '/cart/clear'=> 'cart#clearCart'
  get '/cart/:id' => 'cart#add'
  resources :orders
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
