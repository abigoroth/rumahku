Rails.application.routes.draw do
  resources :jeng3s
  resources :jeng2s
  get 'pages/main'
  get 'pages/jeng2'
  resources :apartments
  resources :parkspacelogs
  resources :guests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  resources :park_spaces
  resources :park_spacerentals
  get 'pages/space_rental'
  resources :cars
  resources :parkspacelogs
  resources :guests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
