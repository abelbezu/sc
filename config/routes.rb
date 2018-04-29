Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Users will be met with an assortment of recent articles, questions and interviews.
  root :to => 'homepage#index'


  get '/statics', to: 'statics#index'
  post '/images/remove_image', to: 'images#remove_image'
  
  resources :users
  resources :articles
  resources :questions
  resources :pieces
  resources :images
  resources :comments
end
