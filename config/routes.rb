Rails.application.routes.draw do

  devise_for :users
get "/home/about" => "homes#about"

  root to: 'homes#top'
 

  resources :books, only: [:new, :create, :edit, :update, :index, :show, :destroy]

  resources :users, only: [:show, :edit, :index, :update]
 end
