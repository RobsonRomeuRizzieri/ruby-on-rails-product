Producer::Application.routes.draw do
  root :to => "pages#index"

  namespace :admin do
    resources :posts
    resources :categories, :except => [:show]
  end

  resources :categories

  resources :posts do
    resources :comments
  end

  match '/home'   => "pages#index",  :as => :home
  match '/prices' => "pages#prices", :as => :prices
  match '/tour'   => "pages#tour",   :as => :tour

  get "pages/index"
end
