Rails.application.routes.draw do
  get 'meals/new'
  get 'meals/index'
  get 'meals/show'
  get 'meals/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "homes#top"
end
