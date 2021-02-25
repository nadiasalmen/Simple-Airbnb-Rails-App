Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :flats do
    resources :bookings, only: [:create]
  end
  # resources :bookings, only: [:index, :show, :edit, :update]
  get '/search', to: 'flats#search'
end
