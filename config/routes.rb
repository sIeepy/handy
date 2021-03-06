Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users, only: [:index, :show]
  resources :profiles
  resources :addresses
  resources :announcements
  resources :skill_sets
  resources :skill
end
