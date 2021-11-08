Rails.application.routes.draw do
  get '/home', to: 'pages#home'
  get '/movies', to: 'movies#index'

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
