Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: 'admins/registrations' }
  
  get 'home/index'

  resources :posts

  get '/posts' => 'posts#index'

  root 'home#index'
end
