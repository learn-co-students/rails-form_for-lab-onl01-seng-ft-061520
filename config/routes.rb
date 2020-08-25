Rails.application.routes.draw do
  # resources :school_classes
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :students

  resources :school_classes, only: [:show, :new, :create, :edit, :update]
  resources :students, only: [:show, :new, :create, :edit, :update]
end
