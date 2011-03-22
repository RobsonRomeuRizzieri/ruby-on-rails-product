Producer::Application.routes.draw do

  resources :categories

  resources :posts do
    resources :comments, :only => [:create]
  end

  get "pages/index"
end
