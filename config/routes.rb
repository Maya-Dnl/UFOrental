Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/edit'
  get 'bookings/updatec'
  get 'flying_saucers/new'
  get 'flying_saucers/create'
  get 'flying_saucers/index'
  get 'flying_saucers/show'
  get 'flying_saucers/edit'
  get 'flying_saucers/update'
  get 'flying_saucers/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :flying_saucers do
    resources :bookings, only: [:new, :create, :index, :show, :edit, :update]
  end
end
