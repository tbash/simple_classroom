Rails.application.routes.draw do
  devise_for :users
  resources :courses do
    resources :course_sessions do
      resources :messages
    end
  end
  
  root to: "courses#index"
end
