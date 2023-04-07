Rails.application.routes.draw do

  resources :book_lessons
  resources :lessons2s
  resources :lessons1s
devise_for :users, :controllers => {  registrations: 'users/registrations',  omniauth_callbacks: 'users/omniauth_callbacks'}

  resources :lessons
  #devise_for :users
  resources :courses
 
  root "home#index"
  get 'home/activity'




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index,:edit,:show,:update]

# get '/provider/callback', to: 'sessions#create'
# get '/logout', to: 'sessions#destroy', as: 'logout'
#   # get '/logout', to: 'sessions#destroy', as: 'logout'
end
