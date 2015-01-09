Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end

  resources :projects

  get '/about', to: 'pages#about'

  root "projects#index"
end
