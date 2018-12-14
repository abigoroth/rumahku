Rails.application.routes.draw do

  
  resources :chat_rooms, only: [:new, :create, :show, :index]
  #root 'chat_rooms#index'

 

  mount ActionCable.server => '/cable'

  get 'chat_rooms/show'
  get 'chat_rooms/new'
  get 'chat_rooms/_chat_room'
  get 'chat_rooms/index'
  get 'messages/_message'
  get 'park_spacerentals/filter_expired'
 
  resources :clusters
  get 'floorplans/_maparea_field'
  get 'floorplans/_map_area_fields'
  get 'floorplan/_map_area_fields'
  resources :floorplans
  get 'pages/floor_plan' 
  
  get '/pages/request_date'

  
  resources :guests
  
  resources :park_spaces do
    resources :park_spacerentals
    resources :parkspacelogs
  end
  resources :park_spacerentals
  get 'pages/space_rental'
  resources :cars
  resources :parkspacelogs
  resources :guests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :parkingqueues
  resources :park_spaces
  resources :park_spacerentals
  
  get 'pages/space_rental'
  resources :cars
  resources :parkspacelogs
  resources :guests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get 'pages/residentlist'
  resources :infos 
  resources :res
  resources :guests
  get 'pages/guestregister'
  get 'pages/user'
  get 'pages/guard'
  get 'pages/admin'
  get 'apartments/filter_parking_queue' 
  devise_for :guards
  devise_for :admins
  devise_for :users
  root to: redirect('/pages/residentlist')
  get 'pages/main'

  resources :parkingqueues
  resources :park_spaces do
    resources :apartments   
        member do
          get "request_parking_queue"          
        end     
  end

  resources :park_spaces do
    resources :park_spacerentals   
        member do
          get "filter_expired"          
        end     
  end
  

  
  resources :park_spacerentals
  get 'pages/space_rental'
  resources :cars
  resources :parkspacelogs
  resources :guests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  resources :users
  resources :residentlists
  resources :residents
  resources :parkingqueues


  get 'pages/space_rental'
  resources :cars
  resources :parkspacelogs
  resources :guests
  resources :parkingqueues
  resources :jeng3s
  resources :jeng2s
  get 'pages/main'
  get 'pages/jeng2'
  resources :park_spaces do  
    resources :park_spacerentals      
        member do
          get "request_parking_queue"
        end     
  end


  resources :parkspacelogs
  resources :guests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :admin do
  resources :posts
  root to: redirect('/pages/admin')
end

namespace :user do
  resources :posts
  root to: redirect('/pages/user')
end

namespace :guard do
  resources :posts
  root to: redirect('http://localhost:3000/guests')
end


  resources :parkingqueues
  resources :jeng3s
  resources :jeng2s
  get 'pages/main'
  get 'pages/jeng2'
  resources :apartments
  resources :parkspacelogs
  resources :guests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 

  

end



