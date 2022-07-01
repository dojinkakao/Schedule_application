Rails.application.routes.draw do
  root 'post#index'

  resources :posts, controller: :post
end
