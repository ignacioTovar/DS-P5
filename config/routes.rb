Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'

  resources :detalle_compras
  resources :compras
  resources :comentarios
  resources :fornitures
  resources :users
  resources :developers
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '', to: 'sessions#welcome', as: 'home'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # Defines the root path route ("/")
  # root "articles#index"
  root 'sessions#welcome'

   
end


 