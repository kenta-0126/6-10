Rails.application.routes.draw do
 
  devise_for :users
  
  root to: 'homes#top'
  get 'home/about'
  resources :books, only: [:new, :create, :index, :show, :destroy]
  
  resources :users, only: [:show, :edit, :index]
end
