Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tracks
  resources :lessons
  resources :subjects
  resources :chapters

  root to: 'tracks#index'
end
