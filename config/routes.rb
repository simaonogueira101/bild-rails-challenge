Rails.application.routes.draw do
  get 'home/index'

  resources :posts

  get '/posts' => 'posts#index'

  root 'home#index'
end
