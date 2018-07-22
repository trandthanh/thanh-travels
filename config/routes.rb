Rails.application.routes.draw do
  root to: 'pages#home'

  resources :continents, only: [:index]
  resources :countries, only: [:index]
  resources :locations, only: [:index]

  get 'about', to: 'pages#about'

  get 'locations/:url', to: 'locations#show', as: :location
  get 'continents/:continent_name', to: 'continents#show', as: :continent
  get 'countries/:country_name', to: 'countries#show', as: :country
end
