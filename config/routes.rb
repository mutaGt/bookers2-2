Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'users/index'
  root to: 'homes#top'
  resources :books
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
