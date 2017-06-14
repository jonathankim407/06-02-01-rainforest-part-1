Rails.application.routes.draw do

  root 'products#index'
  # get 'home/index'

  #get 'products' => 'products#index'
  #get 'products/:id' => 'products#show', as: 'product'

  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end

end
