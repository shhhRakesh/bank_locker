Rails.application.routes.draw do

  get 'request_locker_visit/index'

  get '/customers', to: 'customer_management#index', as: 'customer_list'
  get '/customers/:id/update_status', to: 'customer_management#update_status', as: 'update_customer_status'
  resources :request_locker_visits, only: [:index, :create], as: 'request_locker_visits'
  resources :locker_application, only: [:index, :destroy]
  get 'make_locker_application', to: 'locker_application#make_locker_application', as: 'make_locker_application'
  resources :locker_visit_requests, only: [:index]
  resources :locker_requests, only: [:index] do
    resources :user_lockers, only: [:new, :create, :delete]
  end
  get 'locker_requests/:id/update_locker_request/:status',  to: 'locker_requests#update_locker_request', as: 'update_locker_request'
  get 'locker_visit_requests/:id/update_visit_request/:status',  to: 'locker_visit_requests#update_visit_request', as: 'update_visit_request'
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
