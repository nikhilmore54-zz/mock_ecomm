 Rails.application.routes.draw do
  get 'orders_controller/new'
  get 'orders_controller/create'
  resources :line_items
  resources :carts
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :photos, only: [:new, :create, :index, :edit, :update]

  root 'photos#index'
end
