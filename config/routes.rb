Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :city_weathers, only: [:create]
  get '/searches', to:'city_weathers#searches'
  get '/unsubscribe',to: 'users#unsubscribe'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
