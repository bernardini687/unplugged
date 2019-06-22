Rails.application.routes.draw do
  root to: 'instruments#index'

  resources :instruments, only: %i[show new edit create update]
  devise_for :users
end
