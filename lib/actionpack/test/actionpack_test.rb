# typed: true

module ActionPackTest
  extend ActionDispatch::Routing::Mapper::HttpHelpers
  extend ActionDispatch::Routing::Mapper::Resources

  root 'home#index'
  get 'home/index'

  resources :games do
    get :search, on: :collection
  end

  resources :game_purchases, except: [:edit, :new] do
    post :bulk_update, on: :collection
  end

  resources :users do
    get :index, on: :collection
    get :statistics, on: :member
    get '/compare/:user_id...:other_user_id', as: :compare, action: :compare, on: :collection
  end

  resources :platforms do
    get :search, on: :collection
  end

  namespace :search do
    get :index, as: '/', path: '/'
  end

  namespace :settings do
    get :profile, as: '/', path: '/'
    get :account
  end

  get '/about', to: 'static_pages#about'

  delete 'about' => 'static_pages#about'
  get 'about' => 'static_pages#about'
  match 'about' => 'static_pages#about'
  patch 'about' => 'static_pages#about'
  post 'about' => 'static_pages#about'
  put 'about' => 'static_pages#about'
end
