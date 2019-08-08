# typed: true

module ActionPackRoutesTest
  extend ActionDispatch::Routing::Mapper::HttpHelpers
  extend ActionDispatch::Routing::Mapper::Resources

  root 'home#index'
  root to: "home#index"
  get 'home/index'

  resources :posts, path_names: { new: "brand_new" }
  resources :posts, path: 'postings'
  resources :cows, only: :show
  resources :cows, only: [:show, :index]
  resources :cows, except: :show
  resources :cows, except: [:show, :index]

  resources :games do
    get :search, on: :collection
  end

  resources :game_purchases, except: [:edit, :new] do
    get :statistics, on: :member
    get '/compare/:user_id...:other_user_id', as: :compare, action: :compare, on: :collection
    get :index, on: :collection
    post :bulk_update, on: :collection
    delete :remove, on: :member
    put :update, on: :member
    patch :upgrade, on: :member
  end

  namespace :settings do
    get :profile, as: '/', path: '/'
    get :account
  end

  resources :articles do
    resources :comments, shallow: true
  end
  
  resources :articles, shallow: true do
    resources :comments
  end
  
  resources :photos do
    member do
      get 'preview'
    end
  
    collection do
      get 'search'
    end
  end

  get '/about', to: 'static_pages#about'

  delete 'about' => 'static_pages#about'
  get 'about' => 'static_pages#about'
  match 'about' => 'static_pages#about'
  patch 'about' => 'static_pages#about'
  post 'about' => 'static_pages#about'
  put 'about' => 'static_pages#about'

  get 'profile', action: :show, controller: 'users'
  
  get 'photos(/:id)', to: :display
  get 'photos/:id', to: 'photos#show', defaults: { format: 'jpg' }
  get 'exit', to: 'sessions#destroy', as: :logout
  
  match 'photos', to: 'photos#show', via: [:get, :post]
  match 'photos', to: 'photos#show', via: :all
  match 'path', to: 'controller#action', via: :post

  get 'こんにちは', to: 'welcome#index'
  get '/:id', to: 'articles#show', constraints: { id: /^\d/ }
  get '*pages', to: 'pages#show', format: false
end

module ActionPackProtectFromForgeryTest
  extend ActionController::RequestForgeryProtection::ClassMethods
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  protect_from_forgery prepend: true, with: :exception
  protect_from_forgery except: :index
end

module ActionPackFlashTest
  extend ActionController::Flash::ClassMethods
  add_flash_types :error, :warning, :success
  add_flash_types :foobar
end

class ActionPackMetalTest < ActionController::Metal
  def person_params
    params.require(:person).permit(:name, :age)

    params.require(:person).permit(ids: [])

    params.require(:person).permit(
      :name,
      person_ids: [],
      child_ids: []
    )
  end
end
