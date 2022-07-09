Rails.application.routes.draw do
  root to: "homes#top"
  get 'homes/about'
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  namespace :admin do
    resources :items, only: [:index, :show, :new, :edit, :create, :destroy]
    resources :genres, only: [:index, :new, :edit, :create, :destroy, :update]
  end
  
  namespace :public do
    resources :items, only: [:index, :show]
    resources :carts, only: [:show]
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
