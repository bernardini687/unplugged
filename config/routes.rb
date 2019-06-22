Rails.application.routes.draw do
  root to: 'instruments#index'

  resources :instruments, only: %i[new create edit update]
  devise_for :users
end
