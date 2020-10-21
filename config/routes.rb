Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :champions, only: [ :index, :new, :create, :show ] do 
    resources :reviews, only: [ :create ]
  end
end
