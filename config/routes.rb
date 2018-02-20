Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'static_pages/home'
  resources :profiles, :except => [:edit,:new,:create,:update,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/home', to: 'home#show'
  get '/home/edit', to: 'home#edit'
  get '/home/new', to: 'home#new'
  post '/home', to: 'home#create'
  patch '/home', to: 'home#update'
  put '/home/:id', to: 'home#update'
end
