Rails.application.routes.draw do
  resources :users
  resources :city_weathers
  get '/searches', to:'city_weathers#last_10_searches'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
