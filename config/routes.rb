Rails.application.routes.draw do
  root to: 'pages#home'

  resources :continents, only: [:index]
  resources :countries, only: [:index]
  resources :locations, only: [:index]

  get 'locations/:url', to: 'locations#show', as: :location
  get 'continents/:continent_name', to: 'continents#show', as: :continent
end
