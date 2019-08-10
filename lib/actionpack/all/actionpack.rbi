# typed: strong

class ActionController::Base < ActionController::Metal
end

class AbstractController::Base < Object
end

class ActionController::Metal < AbstractController::Base
  sig { returns(ActionDispatch::Request) }
  def request(); end

  sig { returns(ActionDispatch::Response) }
  def response(); end

  sig { returns(ActionController::Parameters) }
  def params(); end
end

module ActionDispatch::Http::Parameters
  sig { returns(ActionController::Parameters) }
  def parameters(); end

  # params is an alias of parameters
  sig { returns(ActionController::Parameters) }
  def params(); end
end

class ActionDispatch::Request
end

class ActionDispatch::Response
end

class ActionController::Parameters
  sig { params(other: ActionController::Parameters).returns(T::Boolean) }
  def ==(other); end

  sig { params(key: T.any(String, Symbol)).returns(T.nilable(ActionController::Parameters)) }
  def [](key); end

  sig { params(key: T.any(String, Symbol), value: T.untyped).void }
  def []=(key, value); end

  sig { returns(T.untyped) }
  def always_permitted_parameters; end

  sig { params(obj: T.untyped).returns(T.untyped) }
  def always_permitted_parameters=(obj); end

  sig { params(value: T.untyped).returns(T::Boolean) }
  def array_of_permitted_scalars?(value); end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def as_json(*args, &block); end

  sig { params(key: T.untyped, value: T.untyped).returns(T.untyped) }
  def convert_hashes_to_parameters(key, value); end

  sig { params(value: T.untyped, using: T.untyped).returns(T.untyped) }
  def convert_parameters_to_hashes(value, using); end

  sig { params(value: T.untyped).returns(T.untyped) }
  def convert_value_to_parameters(value); end

  sig { returns(T.untyped) }
  def converted_arrays; end

  sig { returns(T.untyped) }
  def deep_dup; end

  sig { params(key: T.any(String, Symbol), block: T.untyped).returns(T.untyped) }
  def delete(key, &block); end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def dig(*keys); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def each(&block); end

  sig { params(object: T.untyped).returns(T.untyped) }
  def each_element(object); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def each_pair(&block); end

  sig { params(args: T.untyped, block: T.untyped).returns(T::Boolean) }
  def empty?(*args, &block); end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def except(*keys); end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def extract!(*keys); end

  sig { params(key: T.any(String, Symbol), args: T.untyped).returns(T.untyped) }
  def fetch(key, *args); end

  sig { returns(T::Boolean) }
  def fields_for_style?; end

  sig { params(args: T.untyped, block: T.untyped).returns(T::Boolean) }
  def has_key?(*args, &block); end

  sig { params(args: T.untyped, block: T.untyped).returns(T::Boolean) }
  def has_value?(*args, &block); end

  sig { params(params: T.untyped, filter: T.untyped).returns(T.untyped) }
  def hash_filter(params, filter); end

  sig { params(args: T.untyped, block: T.untyped).returns(T::Boolean) }
  def include?(*args, &block); end

  sig { params(parameters: T.untyped).void }
  def initialize(parameters = nil); end

  sig { params(source: T.untyped).returns(T.untyped) }
  def initialize_copy(source); end

  sig { returns(String) }
  def inspect; end

  sig { params(args: T.untyped, block: T.untyped).returns(T::Boolean) }
  def key?(*args, &block); end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def keys(*args, &block); end

  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def merge!(other_hash); end

  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def merge(other_hash); end

  sig { params(hash: T.untyped).returns(T.untyped) }
  def new_instance_with_inherited_permitted_status(hash); end

  sig { params(value: T.untyped).returns(T::Boolean) }
  def non_scalar?(value); end

  sig { returns(T.untyped) }
  def parameters; end

  sig { returns(T.self_type) }
  def permit!; end

  # You can pass _a lot_ of stuff to permit, so filters is left untyped for now.
  sig { params(filters: T.untyped).returns(ActionController::Parameters) }
  def permit(*filters); end

  sig { params(array: T.untyped).returns(T.untyped) }
  def permit_any_in_array(array); end

  sig { params(params: T.untyped).returns(T.untyped) }
  def permit_any_in_parameters(params); end

  sig { params(new_permitted: T.untyped).returns(T.untyped) }
  def permitted=(new_permitted); end

  sig { returns(T::Boolean) }
  def permitted?; end

  sig { params(value: T.untyped).returns(T::Boolean) }
  def permitted_scalar?(value); end

  sig { params(params: T.untyped, key: T.untyped).returns(T.untyped) }
  def permitted_scalar_filter(params, key); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def reject!(&block); end

  # delete_if is an alias of reject!
  sig { params(block: T.untyped).returns(T.untyped) }
  def delete_if(&block); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def reject(&block); end

  sig { params(key: T.any(Symbol, T::Array[Symbol])).returns(ActionController::Parameters) }
  def require(key); end

  # required is an alias of require
  sig { params(key: T.any(Symbol, T::Array[Symbol])).returns(ActionController::Parameters) }
  def required(key); end

  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def reverse_merge!(other_hash); end

  # with_defaults! is an alias of reverse_merge!
  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def with_defaults!(other_hash); end

  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def reverse_merge(other_hash); end

  # with_defaults is an alias of reverse_merge
  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def with_defaults(other_hash); end

  sig { params(block: T.untyped).returns(T.nilable(ActionController::Parameters)) }
  def select!(&block); end
  
  # keep_if is an alias of select!
  sig { params(block: T.untyped).returns(T.nilable(ActionController::Parameters)) }
  def keep_if(&block); end

  sig { params(block: T.untyped).returns(ActionController::Parameters) }
  def select(&block); end

  sig { returns(T.untyped) }
  def self.action_on_unpermitted_parameters; end

  sig { params(obj: T.untyped).returns(T.untyped) }
  def self.action_on_unpermitted_parameters=(obj); end

  sig { returns(T.untyped) }
  def self.always_permitted_parameters; end

  sig { params(obj: T.untyped).returns(T.untyped) }
  def self.always_permitted_parameters=(obj); end

  sig { returns(T.untyped) }
  def self.hook_into_yaml_loading; end

  sig { returns(T.untyped) }
  def self.permit_all_parameters; end

  sig { params(obj: T.untyped).returns(T.untyped) }
  def self.permit_all_parameters=(obj); end

  sig { params(keys: T.any(String, Symbol)).returns(ActionController::Parameters) }
  def slice!(*keys); end

  sig { params(keys: T.any(String, Symbol)).returns(ActionController::Parameters) }
  def slice(*keys); end

  sig { returns(T.untyped) }
  def stringify_keys; end

  sig { returns(ActiveSupport::HashWithIndifferentAccess) }
  def to_h; end

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def to_hash; end

  # to_param is an alias of to_query
  sig { params(args: String).returns(T.nilable(String)) }
  def to_param(*args); end

  sig { params(args: String).returns(T.nilable(String)) }
  def to_query(*args); end

  sig { params(args: T.untyped, block: T.untyped).returns(String) }
  def to_s(*args, &block); end

  sig { returns(ActiveSupport::HashWithIndifferentAccess) }
  def to_unsafe_h; end

  # to_unsafe_hash is an alias of to_unsafe_h
  sig { returns(ActiveSupport::HashWithIndifferentAccess) }
  def to_unsafe_hash; end

  sig { params(block: T.untyped).returns(ActionController::Parameters) }
  def transform_keys!(&block); end

  sig { params(block: T.untyped).returns(ActionController::Parameters) }
  def transform_keys(&block); end

  sig { returns(ActionController::Parameters) }
  def transform_values!; end

  sig { returns(ActionController::Parameters) }
  def transform_values; end

  sig { params(params: T.untyped).returns(T.untyped) }
  def unpermitted_keys(params); end

  sig { params(params: T.untyped).returns(T.untyped) }
  def unpermitted_parameters!(params); end

  sig { params(args: T.untyped, block: T.untyped).returns(T::Boolean) }
  def value?(*args, &block); end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def values(*args, &block); end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def values_at(*keys); end
end

module ActionController::StrongParameters
  sig { returns(ActionController::Parameters) }
  def params; end
end

class ActionDispatch::Routing::RouteSet
  sig { params(blk: T.proc.bind(ActionDispatch::Routing::Mapper).void).void }
  def draw(&blk); end
end

module ActionController::Flash::ClassMethods
  sig { params(types: Symbol).void }
  def add_flash_types(*types); end
end

module ActionController::RequestForgeryProtection::ClassMethods
  sig do
    params(
      only: T.any(T::Array[Symbol], Symbol),
      except: T.nilable(T.any(T::Array[Symbol], Symbol)),
      if: T.untyped,
      unless: T.untyped,
      prepend: T.untyped,
      with: T.nilable(Symbol),
      exception: T.untyped,
      reset_session: T.untyped,
      null_session: T.untyped
    ).void
  end
  def protect_from_forgery(
    only: nil,
    except: nil,
    if: nil,
    unless: nil,
    prepend: false,
    with: nil,
    exception: nil,
    reset_session: nil,
    null_session: nil
  ); end
end

module ActionDispatch::Routing::Mapper::HttpHelpers
  # get, put, patch, post, and delete all have the same arguments as
  # ActionDispatch::Routing::Mapper::Resources#match
  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def delete(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end

  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def get(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end

  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def patch(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end

  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def post(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end

  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def put(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end
end

module ActionDispatch::Routing::Mapper::Resources
  sig { params(name: T.untyped).returns(T.untyped) }
  def action_path(name); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def collection(&block); end

  sig do
    params(
      name: T.any(String, Symbol, T::Hash[String, String]),
      controller: T.nilable(T.any(String, Symbol)),
      action: T.nilable(T.any(String, Symbol)),
      param: T.nilable(Symbol),
      module: T.nilable(T.any(String, Symbol)),
      as: T.nilable(T.any(String, Symbol)),
      via: T.nilable(T.any(Symbol, T::Array[Symbol])),
      to: T.nilable(T.any(String, T.proc.returns(T.untyped))),
      on: T.nilable(Symbol),
      constraints: T.untyped,
      defaults: T.nilable(T::Hash[T.untyped, T.untyped]),
      anchor: T::Boolean,
      format: T.nilable(T.any(String, T::Boolean)),
      path: T.nilable(T.any(String, Symbol)),
      block: T.untyped
    ).returns(T.untyped)
  end
  def match(
    name,
    controller: nil,
    action: nil,
    param: :id,
    module: nil,
    as: nil,
    via: nil,
    to: nil,
    on: nil,
    constraints: nil,
    defaults: nil,
    anchor: true,
    format: nil,
    path: nil,
    &block
  ); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def member(&block); end

  # These are set to T.unsafe(nil) because they do actually have values, but they
  # can't be determined statically. They take the value of path when no explicit
  # values are provided.
  sig do
    params(
      path: T.untyped,
      as: T.untyped,
      module: T.untyped,
      shallow_path: T.untyped,
      shallow_prefix: T.untyped,
      block: T.untyped
    ).returns(T.untyped)
  end
  def namespace(
    path,
    as: T.unsafe(nil),
    module: T.unsafe(nil),
    shallow_path: T.unsafe(nil),
    shallow_prefix: T.unsafe(nil),
    &block
  ); end

  sig do
    params(
      resources: T.any(String, Symbol),
      as: T.nilable(T.any(String, Symbol)),
      controller: T.nilable(T.any(String, Symbol)),
      concerns: T.nilable(T.any(Symbol, T::Array[Symbol])),
      param: T.nilable(Symbol),
      path_names: T.untyped,
      path: T.untyped,
      only: T.nilable(T.any(
        T::Array[T.any(String, Symbol)],
        String,
        Symbol
      )),
      except: T.nilable(T.any(
        T::Array[T.any(String, Symbol)],
        String,
        Symbol
      )),
      shallow: T::Boolean,
      shallow_path: T.nilable(String),
      shallow_prefix: T.nilable(String),
      format: T.untyped,
      block: T.untyped
    ).returns(T.untyped)
  end
  def resource(
    *resources,
    as: nil,
    controller: nil,
    concerns: nil,
    param: nil,
    path_names: nil,
    path: nil,
    only: nil,
    except: nil,
    shallow: false,
    shallow_path: nil,
    shallow_prefix: nil,
    format: nil,
    &block
  ); end

  sig do
    params(
      resources: T.any(String, Symbol),
      as: T.nilable(T.any(String, Symbol)),
      controller: T.nilable(T.any(String, Symbol)),
      concerns: T.nilable(T.any(Symbol, T::Array[Symbol])),
      param: T.nilable(Symbol),
      path_names: T.untyped,
      path: T.untyped,
      only: T.nilable(T.any(
        T::Array[T.any(String, Symbol)],
        String,
        Symbol
      )),
      except: T.nilable(T.any(
        T::Array[T.any(String, Symbol)],
        String,
        Symbol
      )),
      shallow: T::Boolean,
      shallow_path: T.nilable(String),
      shallow_prefix: T.nilable(String),
      format: T.untyped,
      block: T.untyped
    ).returns(T.untyped)
  end
  def resources(
    *resources,
    as: nil,
    controller: nil,
    concerns: nil,
    param: nil,
    path_names: nil,
    path: nil,
    only: nil,
    except: nil,
    shallow: false,
    shallow_path: nil,
    shallow_prefix: nil,
    format: nil,
    &block
  ); end

  sig { params(path: String, to: T.untyped).returns(T.untyped) }
  def root(path, to: nil); end

  sig { returns(T.untyped) }
  def shallow; end

  sig { returns(T::Boolean) }
  def shallow?; end
end
