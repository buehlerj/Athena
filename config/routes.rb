Rails.application.routes.draw do
  resources :game_types
  resources :maps
  resources :ultimates
  resources :weapons
  resources :abilities
  resources :characters
  resources :divisions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
