Rails.application.routes.draw do
  root to: 'instruments#index'

  resources :instruments
  devise_for :users
end
