Rails.application.routes.draw do
  root to: 'instruments#index'

  devise_for :users
end
