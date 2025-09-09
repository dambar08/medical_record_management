Rails.application.routes.draw do
  resources :newsletter_subscriptions, only: [ :new, :create ] do
    collection do
      get :success
      delete :unsubscribe
    end
  end
  resources :alerts
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
    resources :newsletter_subscriptions
    namespace :patients do
      resources :appointments
    end
    resources :laboratories
    resources :wards
    resources :service_queues
    resources :coherts
    resources :appointments
    root "dashboards#show"
    resource :dashboard, only: [ :show ]
    resources :patients do
      resources :conditions
      namespace :patients do
        resources :appointments
        resources :conditions
      end
      resources :charts, only: [] do
        collection do
          get :summary
          get :appointments
          get :attachments
          get :conditions
          get :programs
          get :immunizations
          get :allergies
          get :visits
          get :results
          get :orders
          get :medications
          get :vital_biometric
        end
      end
    end
  end

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
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
