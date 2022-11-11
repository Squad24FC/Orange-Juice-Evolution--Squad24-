Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tracks
  resources :chapters
  resources :subjects do
    resources :lessons
  end
  root to: 'tracks#index'
end
