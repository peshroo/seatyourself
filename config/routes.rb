Rails.application.routes.draw do

  root 'restaurants#index'

  resources :users   #, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  # resources :restaurants
  # resources :reservations

  resources :restaurants do
    resources :reservations
  end


  get '/reservation/:id' => 'reservations#show'

end
