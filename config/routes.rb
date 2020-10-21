Rails.application.routes.draw do
  get 'dashboard/show'
  devise_for :users
  root to: 'pages#home'
  
  resources :champions, only: [ :index, :new, :create, :show ] do 
    resources :bookings, only: [ :new, :create ]
    resources :reviews, only: [ :create ]
  end
  resource :dashboard, only: [ :show ]
end
