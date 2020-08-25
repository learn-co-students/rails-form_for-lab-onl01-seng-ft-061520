Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: %i[new create show edit update index]
  resources :school_classes, only: %i[new create show edit update index]
end
