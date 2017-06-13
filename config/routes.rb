Rails.application.routes.draw do

  root 'products#index'
  # get 'home/index'

  #get 'products' => 'products#index'
  #get 'products/:id' => 'products#show', as: 'product'

  resources :products

end
