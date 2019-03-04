Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :questions, except: [:destroy] do
      resources :answers, except: [:destroy]
    end
  end
  resources :categories
  resources :articles, only: [:read, :update]
  resources :questions, only: [:destroy]
  resources :answers, only: [:destroy]
end
