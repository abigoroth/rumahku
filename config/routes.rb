Rails.application.routes.draw do
  
  resources :infos
  resources :res
  resources :guests
  get 'pages/guestregister'
  get 'pages/user'
  get 'pages/guard'
  get 'pages/admin'
  devise_for :guards
  devise_for :admins
  devise_for :users
  root to: redirect('/pages/main')
  get 'pages/main'
 

  resources :residents
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
  root to: redirect('/pages/guard')
end

end

