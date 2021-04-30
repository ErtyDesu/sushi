Rails.application.routes.draw do
  resources :prodottis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/index', to: 'home#index', as: 'index'
  root 'home#index'
end
