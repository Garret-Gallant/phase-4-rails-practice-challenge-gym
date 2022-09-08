Rails.application.routes.draw do
  resources :memberships, only: [:create, :index, :update]
  resources :clients, only: [:index, :update, :create, :show]
  resources :gyms, only: [:show, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
