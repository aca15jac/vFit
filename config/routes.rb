Rails.application.routes.draw do
  get 'more/index'
  devise_for :users
  get 'progress/index'
  get 'workouts/index'
  get 'logs/index'
  get 'exercises/index'
  get 'muscles/index'

  get 'exercises', to: redirect('/exercises/index')
  get 'workouts', to: redirect('/workouts/index')
  get 'progress', to: redirect('/progress/index')
  get 'logs', to: redirect('/logs/index')
  get 'more', to: redirect('/more/index')
  get 'muscles', to: redirect('/muscles/index')

  resources :muscles 
  resources :exercises do
    resources :logs
  end





  get "/", to: "homepage#home", as: "root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
