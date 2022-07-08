Rails.application.routes.draw do
  namespace :public do
    get 'carts/show'
  end
  root to: "homes#top"
  get 'homes/about'
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  namespace :public do
    resources :items, only: [:index, :show]
    resources :carts, only: [:show]
  end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
