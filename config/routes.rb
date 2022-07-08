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
  
  namespace :public do
    resources :items
  end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
