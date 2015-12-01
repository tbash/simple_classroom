Rails.application.routes.draw do
  resources :usernames
  resources :course_sessions
  devise_for :users
  resources :courses
  
  root to: "courses#index"
end
