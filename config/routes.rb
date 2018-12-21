Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'

  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
end
