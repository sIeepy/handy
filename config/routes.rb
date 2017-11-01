Rails.application.routes.draw do

  devise_for :users
  root 'home#index'
  resources :users do
    member do
      get :user_profiles, :user_address
    end
  end
end
