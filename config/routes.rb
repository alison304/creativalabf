Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :details do
    resources :reviews, only: [ :new, :create ]
    resources :exams, only: [ :new, :create ]
  end

  resources :exams, only: [ :edit, :update, :destroy, :index ] do
    resources :answers, only: [ :new, :create ]
  end
  resources :answers, only: [ :edit, :update, :destroy, :index ]
  resources :reviews, only: [ :edit, :update, :destroy, :index ]
  resources :courses
  resources :memberships
  resources :reviews, only: [:destroy]
end
