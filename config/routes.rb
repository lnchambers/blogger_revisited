Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  resources :posts, only: [:show]
  resources :users, only: [] do
    resources :posts, only: [:new, :create, :update, :edit, :destroy]
  end
end
