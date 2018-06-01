Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :posts, only: [:show]
  resources :users, only: [] do
    resources :posts, only: [:new, :create, :update, :edit, :delete]
  end
end
