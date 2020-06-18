Rails.application.routes.draw do
  post '/users', to: 'users#create'
  post '/login', to: 'users#login'
  patch '/users', to: 'users#update'
  delete '/users', to: 'users#destroy'
  get '/users', to: 'users#show'
  
  get '/countries/:code', to: 'countries#show'

  get '/bookmarks/:country_id', to: 'bookmarks#create'
  get '/bookmarks', to: 'bookmarks#index'
  delete '/bookmarks/:id', to: 'bookmarks#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
