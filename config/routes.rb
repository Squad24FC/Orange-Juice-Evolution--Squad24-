Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tracks
  resources :chapters do
    resources :subjects do
      resources :lessons
    end
  end
  root to: 'tracks#index'
end
