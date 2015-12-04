Rails.application.routes.draw do
  devise_for :users
  resources :courses
  patch '/courses/:id/enroll',   to: 'courses#enroll'

  resources :course_sessions do
    resources :messages
    resources :slides
  end
  
  root to: "courses#index"
end
