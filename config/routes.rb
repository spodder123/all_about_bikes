Rails.application.routes.draw do
  get 'prices/index'
  get 'prices/show'
  get 'countries/index'
  get 'countries/show'
  get 'city_bikes/index'
  get 'city_bikes/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
