Rails.application.routes.draw do
  devise_for :users

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  resources :items
  resources :carts
  resources :carditems
  resources :charges
  post '/carditems/:id', to: 'carditems#create', as: 'panier'
  get '/histoire', to: 'static_pages#history'
  get '/contact', to: 'static_pages#contact'

  resources :items, only: [:show] do
    resources :avatars, only: [:create]
  end

end
