Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users
  resources :flying_saucers do
    resources :bookings, only: [:new, :create, :index, :show, :edit, :update]
  end
end
