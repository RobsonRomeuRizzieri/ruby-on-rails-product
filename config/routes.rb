Producer::Application.routes.draw do
  resources :posts

  get "pages/index"
end
