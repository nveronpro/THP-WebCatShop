Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :users
  get 'mon-compte', action: :show, controller: 'users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  resources :items, :path => "jouets"
  resources :carts, :path => "panier"
  resources :carditems
  resources :charges
  post '/carditems/:id', to: 'carditems#create', as: 'panier'
  get '/histoire', to: 'static_pages#history'
  get '/contact', to: 'static_pages#contact'
  get '/commande/:id', to: 'carts#ask_email', as: 'commande'

  resources :items, only: [:show] do
    resources :avatars, only: [:create]
  end

  resources :cats

end
