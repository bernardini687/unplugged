Rails.application.routes.draw do
  root to: 'instruments#index'

  resources :instruments, only: :new
  devise_for :users
end
