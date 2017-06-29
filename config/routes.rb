Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/contact'

  get 'static_pages/about'

  get 'static_pages/error'

  get 'home', to: 'static_pages#home'
  get '*path', to: 'static_pages#error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'sss', to: 'static_pages#about'
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: "sessions#destroy"
  get '*path', to: 'static_pages#error'
end
