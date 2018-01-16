Rails.application.routes.draw do
  resources :privacies
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'pizzas#index'
  resources :pizzas
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
