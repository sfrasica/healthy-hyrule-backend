Rails.application.routes.draw do
  resources :ingredients
  resources :dishes, only: [:index, :show, :destroy, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
