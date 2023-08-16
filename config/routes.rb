Rails.application.routes.draw do
  resources :marks
  resources :subjects
  resources :attendances
  resources :teachers
  resources :sections
  resources :grades
  resources :section_names
  resources :class_names
  resources :students
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
