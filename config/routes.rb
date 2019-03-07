Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  resources :questions, except: [:destroy] do
    resources :answers, except: [:edit, :update, :destroy]
  end

  resources :categories
  resources :articles, only: [:read, :update]
  resources :questions, only: [:destroy]
  resources :answers, only: [:edit, :update, :destroy]

  resources :answers do
    member do
      put "like", to: "answers#upvote"
    end
  end
end
