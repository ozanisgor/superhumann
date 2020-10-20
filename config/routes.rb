Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :super_heroes, only: [ :index, :new, :create ]
end
