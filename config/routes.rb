Rails.application.routes.draw do
  resources :purchased_items
  resources :orders
  resources :users
  resources :widgets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
