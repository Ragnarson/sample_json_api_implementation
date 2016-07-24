Rails.application.routes.draw do
  resources :albums, only: %i(index show)
  resources :artists, only: %i(index show)
  resources :songs, only: %i(index show)
end
