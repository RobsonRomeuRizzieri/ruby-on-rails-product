Producer::Application.routes.draw do
  root :to => "pages#index"

  namespace :admin do
    resources :posts
    resources :categories, :except => [:show]
  end

  resources :categories

  resources :posts do
    resources :comments, :only => [:create]
  end

  get "pages/index"
end
