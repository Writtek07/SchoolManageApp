Rails.application.routes.draw do
  devise_for :users
  resources :attendances
  resources :marks
  resources :subjects
  resources :teachers
  resources :grades
  resources :students
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
