Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root "sessions#new"
    resources :kids
    resources :sessions, only: [:new, :create, :destroy]
    resources :foods
    resources :users
    
    get '/auth/:provider/callback', to: 'sessions#create'
end
