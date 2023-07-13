Rails.application.routes.draw do
  root 'static_pages#index'
  get 'static_pages/about'
  resources :city_bikes do
    collection do
      get 'search', to: 'city_bikes#search', as: 'city_bike_search'
    end
  end
  resources :countries, only: [:index, :show]
  resources :prices, only: [:index, :show]
end
