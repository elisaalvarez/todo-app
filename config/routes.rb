Rails.application.routes.draw do
  resources :lists do
    resources :tasks
  end
  get 'hello/index'
  get 'hello/showuser'
  # get 'devise/sessions#destroy'
  devise_for :users
  root :to => "hello#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
