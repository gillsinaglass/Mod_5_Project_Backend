Rails.application.routes.draw do
  resources :users
  resources :tasks
  resources :works
  resources :collaborations
end
