Rails.application.routes.draw do
  resources :posts
  resources :projects

  root "posts#index"
end
