Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :items, only: [:index]
end
