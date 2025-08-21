Rails.application.routes.draw do
  resources :orders
  resources :examples
  resources :appointments
  resources :locations
  resources :patients, only: [ :show ]
  resources :calendar, only: [ :index, :show ]
  resources :legals, only: [] do
    collection do
      get :terms
      get :privacy_policy
      get :license
    end
  end

  namespace :admins do
    root "dashboards#show"
    resource :dashboard, only: [ :show ]
    resources :patients
  end


  mount Rswag::Api::Engine => "/api-docs"
  mount Rswag::Ui::Engine => "/api-docs"
  resources :announcements
  resource :session
  resources :passwords, param: :token

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "pages#index"
end
