Rails.application.routes.draw do
  resources :park_spacerentals
  get 'pages/space_rental'
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
