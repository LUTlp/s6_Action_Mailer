Rails.application.routes.draw do

  root to: 'home#index'


  resources :charges

  get '/user/new', to: 'user#new', as: "subscribe"
  post 'user/new', to: 'user#create'





end
