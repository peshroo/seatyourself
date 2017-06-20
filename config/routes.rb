Rails.application.routes.draw do

  root 'restaurants#index'

  resources :restaurants

  resources :users   #, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  resources :reservations

  get '/reservation/:id' => 'reservations#show'

end
