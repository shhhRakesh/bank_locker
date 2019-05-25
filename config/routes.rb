Rails.application.routes.draw do
  resources :lockers
  resources :locker_types
  resources :bank_branches
  resources :managers
  devise_for :admins, path: 'admins', controllers: {
        sessions: 'admins/sessions'
    }

  devise_for :users, path: 'users', controllers: {
        sessions: 'users/sessions'
    }
  get 'welcome/index'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
