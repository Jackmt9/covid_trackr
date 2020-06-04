Rails.application.routes.draw do
  post '/users', to: 'users#create'
  get '/login', to: 'users#login'
  patch '/users', to: 'users#update'
  delete '/users', to: 'users#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
