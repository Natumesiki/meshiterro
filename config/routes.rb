Rails.application.routes.draw do

  root :to => "homes#top"
   get 'homes/about' => 'homes#about' , as: 'about'
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  devise_for :users

  resources :post_images, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



end
