Rails.application.routes.draw do
  root 'static_pages#index'
  get 'static_pages/about'
  resources :city_bikes, only: [:index, :show]
  resources :countries, only: [:index, :show]
  resources :prices, only: [:index, :show]

end
