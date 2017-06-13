Rails.application.routes.draw do

  get 'products' => 'products#index'

  resources :products

end
