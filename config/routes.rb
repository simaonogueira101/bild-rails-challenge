Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: 'admins/registrations' }

  get 'home/index'

  get 'posts/search' => 'posts#search', as: 'search_posts'

  resources :posts

  get '/posts' => 'posts#index'

  root 'home#index'
end
