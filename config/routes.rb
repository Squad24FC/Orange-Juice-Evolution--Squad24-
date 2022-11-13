Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tracks do
    resources :chapters, except: %i[index show new create edit update destroy] do
      resources :subjects, except: %i[index show new create edit update destroy] do
        resources :lessons, only: %i[index]
      end
    end
  end
  root to: 'tracks#index'
end
