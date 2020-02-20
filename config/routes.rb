Rails.application.routes.draw do
  resources :rentals
  resources :customers
  resources :boats
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
