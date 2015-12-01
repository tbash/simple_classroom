Rails.application.routes.draw do
  devise_for :users
  resources :courses

  resources :course_sessions do
    resources :messages
  end
  
  root to: "courses#index"
end
