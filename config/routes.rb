Rails.application.routes.draw do
 

  resources :vendor_sweets
  resources :vendors
  resources :sweets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/vendors', to: 'vendors#index'
  get '/vendors/:id', to: 'vendors#show'

  get '/sweets', to: 'sweets#index'
  get '/sweets:id', to: 'sweets#show'

  get '/vendor_sweets', to: 'vendor_sweets#index'
  post 'vendor_sweets', to: 'vendor_sweets#create'
  delete 'vendor_sweets/:id', to: 'vendor_sweets#destroy'

end
