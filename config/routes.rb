Rails.application.routes.draw do
  resources :comments
  resources :ideas
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
