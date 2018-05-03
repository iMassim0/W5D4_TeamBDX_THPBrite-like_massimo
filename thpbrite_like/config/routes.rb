Rails.application.routes.draw do

  root 'static_pages#index'
  get '/admin', to: 'static_pages#admin', as: 'admin'
  delete '/admin', to: 'users#destroy'
  get '/about', to: 'static_pages#about', as: 'about'
  get  '/signup',  to: 'users#new', as: 'signup'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
