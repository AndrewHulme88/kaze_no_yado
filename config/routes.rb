Rails.application.routes.draw do
  get 'rooms/index'
  root 'home#index'
  get 'rooms', to: 'rooms#index'
  devise_for :users
end
