Rails.application.routes.draw do
  resources :posts
  resources :projects

  get '/about', to: 'about#index'

  root "projects#index"
end
