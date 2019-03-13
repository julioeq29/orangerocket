Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :categories, only: [ :index ]
    end
  end

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

  resources :articles do
    member do
      put "like", to: "articles#upvote"
    end
  end
end
