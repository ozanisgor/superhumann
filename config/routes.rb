Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :champions, only: [ :index, :new, :create ]
  resources :bookings, only: [ :new, :create ]

end
