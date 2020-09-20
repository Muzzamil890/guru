Rails.application.routes.draw do
# Guru::Application.routes.draw do

  concern :csv_exportable do
    get :export, on: :collection, :constraints => { format: :csv }
  end

  devise_for :users, skip: [:registrations], path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  authenticated :user do
    root to: 'dashboard#index'
  end

  namespace :dashboard do
    get :index, to: 'dasboard#index'
    get :visits, to: 'dasboard#visits', constraints: { format: :json }
    get :sources, to: 'dasboard#sources', constraints: { format: :json }
  end

  namespace :members, as: 'member' do
    resource :import, only: [:new, :create], as: 'import'
  end

  resources :members do
    concerns :csv_exportable

    delete :destroy_multiple, on: :collection
    get :active, on: :collection
    get :inactive, on: :collection

    resources :notes, except: [:show, :index], module: 'members'
    resource :account, except: [:show, :destroy]

    resources :payments, except: [:show, :edit, :update] do
      concerns :csv_exportable
    end

    resources :visits, except: :show do
      concerns :csv_exportable
    end
  end

  resources :classes, except: :show, concerns: :csv_exportable
  resources :levels, except: :show, concerns: :csv_exportable
  resources :sources, except: :show, concerns: :csv_exportable

  namespace :settings do
    resource :studio, only: [:edit, :update]
    resource :members, only: [:edit, :update], as: 'member'
    resources :users, except: [:show]
  end

  namespace :reports do
    namespace :members do
      resources :birthdays, only: [:index] do
        collection do
          get '/(:month)', to: 'birthdays#index'
          get '/(:month)/export', to: 'birthdays#export', :constraints => { format: :csv }
        end
      end
      resources :recent, only: [:index] do
        collection do
          get '/', to: 'recent#index'
          get :export, to: 'recent#export', constraints: { format: :csv }
        end
      end
      # namespace :birthdays do
      #   get '/(:month)/export', to: 'birthdays#export', :constraints => { format: :csv }
      #   get '/(:month)', to: 'birthdays#index'
      # end
      # namespace :recent do
      #   get :export, to: 'reports/members/recent#export'
      #   get '/', to: 'reports/members/recent#index'
      # end
    end

    namespace :attendance do
      get '/(:month)/(:year)/export', to: 'attendance#export', :constraints => { format: :csv }
      get '/(:month)/(:year)', to: 'reports/attendance/recent#index'
    end

    # namespace :accounts do
    #   get :export, to: 'accounts#export', constraints: { format: :csv }
    #   get '/(:type)', to: 'accounts#index'
    # end
    # namespace :payments do
    #   get '/(:month)/(:year)/export', to: 'payments#export', :constraints => { format: :csv }
    #   get '/(:month)/(:year)', to: 'payments#index'
    # end
    resources :accounts, only: [:index] do
      collection do
        get '/(:type)', to: 'accounts#index'
        get :export, to: 'accounts#export', constraints: { format: :csv }
      end
    end

    resources :payments, only: [:index] do
      collection do
        get '/(:month)/(:year)', to: 'payments#index'
        get '/(:month)/(:year)/export', to: 'payments#export', constraints: { format: :csv }, as: 'reports_payments_export'
      end
    end

  end

  # devise_for :user do
  #   root to: 'devise/sessions#new'
  # end
  #
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
