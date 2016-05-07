Rails.application.routes.draw do

  root 'static_pages#welcome'

  get 'welcome' => 'static_pages#welcome'

  get 'admin' => "admins#show"

  get 'thankyou' => 'carts#thankyou'

  resources :categories

  resources :products

  resources :carts

  resources :histories

  resources :users

  resources :sessions, only: [:new, :create, :destroy]

end
