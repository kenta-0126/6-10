Rails.application.routes.draw do
  devise_for :users
  
  root to: 'homes#top'
  resorces :books, only: [:new, :create, :index, :show, :destroy]
end
