Rails.application.routes.draw do
  devise_for :users
  resources :scores, only: [:index, :new]
  resources :toppage, only: [:index, :new]
  resources :players, only: [:index, :new]
  resources :infos, only: [:index, :new, :edit]
  resources :users
  root 'users#edit'
end
