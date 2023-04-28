Rails.application.routes.draw do
  devise_for :users
  root to: 'calenders#index'
  resources :users, only: [:edit, :update, :destroy]
  resources :memos, only: [:index, :new, :create]
end
