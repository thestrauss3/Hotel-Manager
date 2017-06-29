Rails.application.routes.draw do
  root 'static_pages#home'

  resources :hotels, only: [:index, :show] do
    resources :floors, only: [:index]
    resources :rooms, only: [:index]
  end

  resources :floors, only: [:show]

  resources :rooms, only: [:show]

  get 'index', to: 'static_pages#home'
  get 'home', to: 'static_pages#home'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get 'help', to: 'static_pages#help'
  get '*path', to: 'static_pages#error'
end

Rails.application.routes.draw do
  get 'sss', to: 'static_pages#about'
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: "sessions#destroy"
  get '*path', to: 'static_pages#error'
end
