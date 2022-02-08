Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :details, except: [:index, :show] do
    resources :reviews, only: [ :new, :create, :index ]
    resources :exams # only: [ :new, :create ]
  end

  resources :exams, only: [ :edit, :update, :destroy, :index, :show ] do
    resources :answers, only: [ :new, :create ]
  end
  # put "take_an_exam", to: ''
  resources :answers, only: [ :index ]
  resources :reviews, only: [ :edit, :update, :destroy, :index ]
  resources :courses do
    resources :details, only: [:index, :show]

  end
  resources :memberships
end
