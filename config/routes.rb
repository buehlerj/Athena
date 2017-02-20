Rails.application.routes.draw do
  root 'main#index'
  get 'main/index'

  resources :game_types
  resources :maps
  resources :ultimates
  resources :weapons
  resources :heros
  resources :abilities
  resources :divisions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
