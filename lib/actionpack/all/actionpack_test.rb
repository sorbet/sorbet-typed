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

module ActionPackCallbacksTest
  extend AbstractController::Callbacks::ClassMethods

  # Test without any options.
  prepend_before_action :action_name
  before_action :action_name
  append_before_action :action_name
  skip_before_action :action_name

  prepend_around_action :action_name
  around_action :action_name
  append_around_action :action_name
  skip_around_action :action_name

  prepend_after_action :action_name
  after_action :action_name
  append_after_action :action_name
  skip_after_action :action_name


  # Test with multiple actions.
  prepend_before_action :action_name, :action_name_2
  before_action :action_name, :action_name_2
  append_before_action :action_name, :action_name_2
  skip_before_action :action_name, :action_name_2

  prepend_around_action :action_name, :action_name_2
  around_action :action_name, :action_name_2
  append_around_action :action_name, :action_name_2
  skip_around_action :action_name, :action_name_2

  prepend_after_action :action_name, :action_name_2
  after_action :action_name, :action_name_2
  append_after_action :action_name, :action_name_2
  skip_after_action :action_name, :action_name_2


  # Test using a block. (skip_* methods don't accept a block)
  prepend_before_action :action_name, only: :show { |controller| puts controller }
  before_action :action_name, only: :show { |controller| puts controller }
  append_before_action :action_name, only: :show { |controller| puts controller }

  prepend_around_action :action_name, only: :show { |controller| puts controller }
  around_action :action_name, only: :show { |controller| puts controller }
  append_around_action :action_name, only: :show { |controller| puts controller }

  prepend_after_action :action_name, only: :show { |controller| puts controller }
  after_action :action_name, only: :show { |controller| puts controller }
  append_after_action :action_name, only: :show { |controller| puts controller }


  # Test proc for `if`, symbol for `only`, symbol array for `except`.
  prepend_before_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]
  before_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]
  append_before_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]
  skip_before_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]

  prepend_around_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]
  around_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]
  append_around_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]
  skip_around_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]

  prepend_after_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]
  after_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]
  append_after_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]
  skip_after_action :action_name, if: -> { true }, only: :show, except: [:edit, :delete]


  # Test symbol for `if`, symbol array for `only`, symbol for `except`.
  prepend_before_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit
  before_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit
  append_before_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit
  skip_before_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit

  prepend_around_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit
  around_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit
  append_around_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit
  skip_around_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit

  prepend_after_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit
  after_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit
  append_after_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit
  skip_after_action :action_name, if: :method_name?, only: [:show, :delete], except: :edit
end

module ActionPackMimeRespondsTest
  extend ActionController::MimeResponds

  respond_to :html, :js

  # Don't call any methods on format because the class it returns has methods
  # generated dynamically based on what mime types have been registered,
  # and we can't type those statically.
  respond_to do |format|
    format
  end
end
