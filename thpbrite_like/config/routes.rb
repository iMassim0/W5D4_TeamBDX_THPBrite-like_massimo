Rails.application.routes.draw do

  get 'sessions/new'
  root 'static_pages#index'
  get '/admin', to: 'static_pages#admin', as: 'admin'
  delete '/admin', to: 'users#destroy'
  get '/about', to: 'static_pages#about', as: 'about'
  get  '/signup',  to: 'users#new', as: 'signup'
  resources :users
  get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy', as:'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
