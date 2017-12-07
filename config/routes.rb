Rails.application.routes.draw do

  resources :projects do
    post 'be_shishou', on: :member
  end
  root to: 'projects#index'
  resource :about, only: [:show], controller: 'about'
  devise_for :users
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
