Rails.application.routes.draw do
  root 'posts#index'
  resources :avis
  resources :comments
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
