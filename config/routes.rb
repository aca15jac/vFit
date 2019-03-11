Rails.application.routes.draw do
  devise_for :users
  get 'progress/index'
  get 'workouts/index'
  get 'logs/index'
  get 'exercises/index'
  get 'exercises', to: redirect('/exercises/index')
  get 'workouts', to: redirect('/workouts/index')
  get 'progress', to: redirect('/progress/index')
  get 'logs', to: redirect('/logs/index')
  get "/", to: "homepage#home", as: "root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
