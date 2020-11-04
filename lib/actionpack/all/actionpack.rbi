# typed: strong

class AbstractController::Base < Object
end

# https://api.rubyonrails.org/classes/AbstractController/Callbacks/ClassMethods.html
module AbstractController::Callbacks::ClassMethods
  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean,
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def after_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true, &block); end

  # append_after_action is an alias of after_action
  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean,
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def append_after_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true, &block); end

  # append_around_action is an alias of around_action
  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean,
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def append_around_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true, &block); end

  # append_before_action is an alias of before_action
  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean,
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def append_before_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true, &block); end

  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean,
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def around_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true, &block); end

  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean,
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def before_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true, &block); end

  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean,
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def prepend_after_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true, &block); end

  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean,
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def prepend_around_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true, &block); end

  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean,
      block: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def prepend_before_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true, &block); end

  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean
    ).void
  end
  def skip_after_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true); end

  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean
    ).void
  end
  def skip_around_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true); end

  sig do
    params(
      names: T.any(Symbol, Proc),
      except: T.nilable(T.any(Symbol, T::Array[Symbol])),
      only: T.nilable(T.any(Symbol, T::Array[Symbol])),
      if: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      unless: T.nilable(T.any(Symbol, T::Array[Symbol], Proc)),
      raise: T::Boolean
    ).void
  end
  def skip_before_action(*names, except: nil, only: nil, if: nil, unless: nil, raise: true); end
end

module AbstractController::Collector
  def atom(*args, &block); end
  def bmp(*args, &block); end
  def css(*args, &block); end
  def csv(*args, &block); end
  def gif(*args, &block); end
  def gzip(*args, &block); end
  def html(*args, &block); end
  def ics(*args, &block); end
  def jpeg(*args, &block); end
  def js(*args, &block); end
  def json(*args, &block); end
  def m4a(*args, &block); end
  def mp3(*args, &block); end
  def mp4(*args, &block); end
  def mpeg(*args, &block); end
  def multipart_form(*args, &block); end
  def ogg(*args, &block); end
  def otf(*args, &block); end
  def pdf(*args, &block); end
  def png(*args, &block); end
  def rss(*args, &block); end
  def svg(*args, &block); end
  def text(*args, &block); end
  def tiff(*args, &block); end
  def ttf(*args, &block); end
  def url_encoded_form(*args, &block); end
  def vcf(*args, &block); end
  def vtt(*args, &block); end
  def webm(*args, &block); end
  def woff(*args, &block); end
  def woff2(*args, &block); end
  def xml(*args, &block); end
  def yaml(*args, &block); end
  def zip(*args, &block); end

  private

  def method_missing(symbol, &block); end

  class << self
    def generate_method_for_mime(mime); end
  end
end

class AbstractController::DoubleRenderError < ::AbstractController::Error
  def initialize(message = T.unsafe(nil)); end
end

class AbstractController::Error < ::StandardError
end

module AbstractController::Helpers
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::AbstractController::Helpers::ClassMethods)
end

module AbstractController::Helpers::ClassMethods
  def clear_helpers; end
  def helper(*args, &block); end
  def helper_method(*meths); end
  def inherited(klass); end
  def modules_for_helpers(args); end

  private

  def add_template_helper(mod); end
  def default_helper_module!; end
end

class AbstractController::Helpers::MissingHelperError < ::LoadError
  def initialize(error, path); end
end

module AbstractController::Logger
  extend(::ActiveSupport::Concern)

  include(::ActiveSupport::Benchmarkable)
end

module AbstractController::UrlFor
  extend(::ActiveSupport::Concern)

  include(::ActionDispatch::Routing::UrlFor)

  mixes_in_class_methods(::AbstractController::UrlFor::ClassMethods)

  def _routes; end
end

module AbstractController::UrlFor::ClassMethods
  def _routes; end
  def action_methods; end
end

class ActionController::ActionControllerError < ::StandardError
end

module ::AbstractController::Rendering; end
module ::AbstractController::Translation; end
module ::AbstractController::AssetPaths; end
module ::ActionDispatch::Routing::PolymorphicRoutes; end
module ::ActionController::ConditionalGet; end
module ::ActionController::EtagWithTemplateDigest; end
module ::ActionController::EtagWithFlash; end
module ::ActionController::Caching; end
module ::AbstractController::Caching::Fragments; end
module ::AbstractController::Caching::ConfigMethods; end
module ::AbstractController::Caching; end
module ::ActionController::BasicImplicitRender; end
module ::ActionController::ImplicitRender; end
module ::ActionController::ParameterEncoding; end
module ::ActionController::Cookies; end
module ::ActionController::FormBuilder; end
module ::ActionController::ContentSecurityPolicy; end
module ::ActionController::ForceSSL; end
module ::ActionController::Streaming; end
module ::ActionController::HttpAuthentication::Basic::ControllerMethods; end
module ::ActionController::HttpAuthentication::Digest::ControllerMethods; end
module ::ActionController::HttpAuthentication::Token::ControllerMethods; end
module ::ActionController::DefaultHeaders; end
module ::ActionController::Rescue; end
module ::ActionController::Instrumentation; end
module ::ActionController::ParamsWrapper; end
module ::ActionController::ConditionalGet::ClassMethods; end
module ::AbstractController::Caching::Fragments::ClassMethods; end
module ::AbstractController::Caching::ClassMethods; end
module ::AbstractController::Caching::ConfigMethods; end
module ::ActionController::ParameterEncoding::ClassMethods; end
module ::ActionController::FormBuilder::ClassMethods; end
module ::ActionController::ContentSecurityPolicy::ClassMethods; end
module ::ActionController::ForceSSL::ClassMethods; end
module ::ActionController::HttpAuthentication::Basic::ControllerMethods::ClassMethods; end
module ::ActionController::DefaultHeaders::ClassMethods; end
module ::ActionController::Instrumentation::ClassMethods; end
module ::ActionController::ParamsWrapper::ClassMethods; end

class ActionController::Base < ::ActionController::Metal
  include(::ActionView::ViewPaths)
  include(::AbstractController::Rendering)
  include(::AbstractController::Translation)
  include(::AbstractController::AssetPaths)
  include(::AbstractController::Helpers)
  include(::ActionController::Helpers)
  include(::ActionDispatch::Routing::PolymorphicRoutes)
  include(::ActionDispatch::Routing::UrlFor)
  include(::AbstractController::UrlFor)
  include(::ActionController::UrlFor)
  include(::AbstractController::Logger)
  include(::ActiveSupport::Benchmarkable)
  include(::ActionController::Redirecting)
  include(::ActionView::Rendering)
  include(::ActionView::Layouts)
  include(::ActionController::Rendering)
  include(::ActionController::Renderers)
  include(::ActionController::Renderers::All)
  include(::ActionController::Head)
  include(::ActionController::ConditionalGet)
  include(::ActionController::EtagWithTemplateDigest)
  include(::ActionController::EtagWithFlash)
  include(::ActionController::Caching)
  include(::AbstractController::Caching::Fragments)
  include(::AbstractController::Caching::ConfigMethods)
  include(::AbstractController::Caching)
  include(::ActionController::MimeResponds)
  include(::ActionController::BasicImplicitRender)
  include(::ActionController::ImplicitRender)
  include(::ActionController::StrongParameters)
  include(::ActionController::ParameterEncoding)
  include(::ActionController::Cookies)
  include(::ActionController::Flash)
  include(::ActionController::FormBuilder)
  include(::ActiveSupport::Callbacks)
  include(::AbstractController::Callbacks)
  include(::ActionController::RequestForgeryProtection)
  include(::ActionController::ContentSecurityPolicy)
  include(::ActionController::ForceSSL)
  include(::ActionController::Streaming)
  include(::ActionController::DataStreaming)
  include(::ActionController::HttpAuthentication::Basic::ControllerMethods)
  include(::ActionController::HttpAuthentication::Digest::ControllerMethods)
  include(::ActionController::HttpAuthentication::Token::ControllerMethods)
  include(::ActionController::DefaultHeaders)
  include(::ActiveSupport::Rescuable)
  include(::ActionController::Rescue)
  include(::ActionController::Instrumentation)
  include(::ActionController::ParamsWrapper)
  extend(::ActionView::ViewPaths::ClassMethods)
  extend(::AbstractController::Helpers::ClassMethods)
  extend(::ActionController::Helpers::ClassMethods)
  extend(::AbstractController::UrlFor::ClassMethods)
  extend(::ActionView::Rendering::ClassMethods)
  extend(::ActionView::Layouts::ClassMethods)
  extend(::ActionController::Rendering::ClassMethods)
  extend(::ActionController::Renderers::ClassMethods)
  extend(::ActionController::ConditionalGet::ClassMethods)
  extend(::AbstractController::Caching::Fragments::ClassMethods)
  extend(::AbstractController::Caching::ClassMethods)
  extend(::AbstractController::Caching::ConfigMethods)
  extend(::ActionController::ParameterEncoding::ClassMethods)
  extend(::ActionController::Flash::ClassMethods)
  extend(::ActionController::FormBuilder::ClassMethods)
  extend(::ActiveSupport::Callbacks::ClassMethods)
  extend(::AbstractController::Callbacks::ClassMethods)
  extend(::ActionController::RequestForgeryProtection::ClassMethods)
  extend(::ActionController::ContentSecurityPolicy::ClassMethods)
  extend(::ActionController::ForceSSL::ClassMethods)
  extend(::ActionController::HttpAuthentication::Basic::ControllerMethods::ClassMethods)
  extend(::ActionController::DefaultHeaders::ClassMethods)
  extend(::ActiveSupport::Rescuable::ClassMethods)
  extend(::ActionController::Instrumentation::ClassMethods)
  extend(::ActionController::ParamsWrapper::ClassMethods)

  def __callbacks; end
  def __callbacks?; end
  def _cancan_skipper; end
  def _cancan_skipper=(val); end
  def _cancan_skipper?; end
  def _helper_methods; end
  def _helper_methods=(val); end
  def _helper_methods?; end
  def _helpers; end
  def _helpers=(val); end
  def _helpers?; end
  def _process_action_callbacks; end
  def _protected_ivars; end
  def _renderers; end
  def _renderers=(val); end
  def _renderers?; end
  def _run_process_action_callbacks(&block); end
  def _view_cache_dependencies; end
  def _view_cache_dependencies=(val); end
  def _view_cache_dependencies?; end
  def _wrapper_options; end
  def _wrapper_options=(val); end
  def _wrapper_options?; end
  def alert; end
  def allow_forgery_protection; end
  def allow_forgery_protection=(value); end
  def asset_host; end
  def asset_host=(value); end
  def assets_dir; end
  def assets_dir=(value); end
  def default_asset_host_protocol; end
  def default_asset_host_protocol=(value); end
  def default_protect_from_forgery; end
  def default_protect_from_forgery=(value); end
  def default_static_extension; end
  def default_static_extension=(value); end
  def default_url_options; end
  def default_url_options=(val); end
  def default_url_options?; end
  def enable_fragment_cache_logging; end
  def enable_fragment_cache_logging=(value); end
  def etag_with_template_digest; end
  def etag_with_template_digest=(val); end
  def etag_with_template_digest?; end
  def etaggers; end
  def etaggers=(val); end
  def etaggers?; end
  def flash(*_, &_); end
  def forgery_protection_origin_check; end
  def forgery_protection_origin_check=(value); end
  def forgery_protection_strategy; end
  def forgery_protection_strategy=(value); end
  def fragment_cache_keys; end
  def fragment_cache_keys=(val); end
  def fragment_cache_keys?; end
  def helpers_path; end
  def helpers_path=(val); end
  def helpers_path?; end
  def include_all_helpers; end
  def include_all_helpers=(val); end
  def include_all_helpers?; end
  def javascripts_dir; end
  def javascripts_dir=(value); end
  def log_warning_on_csrf_failure; end
  def log_warning_on_csrf_failure=(value); end
  def logger; end
  def logger=(value); end
  def mimes_for_respond_to; end
  def mimes_for_respond_to=(val); end
  def mimes_for_respond_to?; end
  def notice; end
  def per_form_csrf_tokens; end
  def per_form_csrf_tokens=(value); end
  def perform_caching; end
  def perform_caching=(value); end
  def relative_url_root; end
  def relative_url_root=(value); end
  def request_forgery_protection_token; end
  def request_forgery_protection_token=(value); end
  def rescue_handlers; end
  def rescue_handlers=(val); end
  def rescue_handlers?; end
  def responder; end
  def responder=(val); end
  def responder?; end
  def stylesheets_dir; end
  def stylesheets_dir=(value); end

  private

  def _layout(lookup_context, formats); end

  class << self
    def __callbacks; end
    def __callbacks=(val); end
    def __callbacks?; end
    def _cancan_skipper; end
    def _cancan_skipper=(val); end
    def _cancan_skipper?; end
    def _default_form_builder; end
    def _default_form_builder=(val); end
    def _default_form_builder?; end
    def _flash_types; end
    def _flash_types=(val); end
    def _flash_types?; end
    def _helper_methods; end
    def _helper_methods=(val); end
    def _helper_methods?; end
    def _helpers; end
    def _helpers=(val); end
    def _helpers?; end
    def _layout; end
    def _layout=(val); end
    def _layout?; end
    def _layout_conditions; end
    def _layout_conditions=(val); end
    def _layout_conditions?; end
    def _process_action_callbacks; end
    def _process_action_callbacks=(value); end
    def _renderers; end
    def _renderers=(val); end
    def _renderers?; end
    def _view_cache_dependencies; end
    def _view_cache_dependencies=(val); end
    def _view_cache_dependencies?; end
    def _wrapper_options; end
    def _wrapper_options=(val); end
    def _wrapper_options?; end
    def allow_forgery_protection; end
    def allow_forgery_protection=(value); end
    def asset_host; end
    def asset_host=(value); end
    def assets_dir; end
    def assets_dir=(value); end
    def default_asset_host_protocol; end
    def default_asset_host_protocol=(value); end
    def default_protect_from_forgery; end
    def default_protect_from_forgery=(value); end
    def default_static_extension; end
    def default_static_extension=(value); end
    def default_url_options; end
    def default_url_options=(val); end
    def default_url_options?; end
    def enable_fragment_cache_logging; end
    def enable_fragment_cache_logging=(value); end
    def etag_with_template_digest; end
    def etag_with_template_digest=(val); end
    def etag_with_template_digest?; end
    def etaggers; end
    def etaggers=(val); end
    def etaggers?; end
    def forgery_protection_origin_check; end
    def forgery_protection_origin_check=(value); end
    def forgery_protection_strategy; end
    def forgery_protection_strategy=(value); end
    def fragment_cache_keys; end
    def fragment_cache_keys=(val); end
    def fragment_cache_keys?; end
    def helpers_path; end
    def helpers_path=(val); end
    def helpers_path?; end
    def include_all_helpers; end
    def include_all_helpers=(val); end
    def include_all_helpers?; end
    def inherit_resources; end
    def javascripts_dir; end
    def javascripts_dir=(value); end
    def log_warning_on_csrf_failure; end
    def log_warning_on_csrf_failure=(value); end
    def logger; end
    def logger=(value); end
    def middleware_stack; end
    def mimes_for_respond_to; end
    def mimes_for_respond_to=(val); end
    def mimes_for_respond_to?; end
    def per_form_csrf_tokens; end
    def per_form_csrf_tokens=(value); end
    def perform_caching; end
    def perform_caching=(value); end
    def relative_url_root; end
    def relative_url_root=(value); end
    def request_forgery_protection_token; end
    def request_forgery_protection_token=(value); end
    def rescue_handlers; end
    def rescue_handlers=(val); end
    def rescue_handlers?; end
    def responder; end
    def responder=(val); end
    def responder?; end
    def stylesheets_dir; end
    def stylesheets_dir=(value); end
    def without_modules(*modules); end
  end
end

ActionController::Base::MODULES = T.let(T.unsafe(nil), T::Array[T.untyped])

ActionController::Base::PROTECTED_IVARS = T.let(T.unsafe(nil), T::Set[T.untyped])

module ActionController::DataStreaming
  extend(::ActiveSupport::Concern)

  include(::ActionController::Rendering)

  private

  def send_data(data, options = T.unsafe(nil)); end
  def send_file(path, options = T.unsafe(nil)); end
  def send_file_headers!(options); end
end

module ActionController::Flash::ClassMethods
  sig { params(types: Symbol).void }
  def add_flash_types(*types); end
end

module ActionController::Head
  def head(status, options = T.unsafe(nil)); end

  private

  def include_content?(status); end
end

module ActionController::Helpers
  extend(::ActiveSupport::Concern)

  include(::AbstractController::Helpers)

  mixes_in_class_methods(::ActionController::Helpers::ClassMethods)

  def helpers; end

  class << self
    def helpers_path; end
    def helpers_path=(_); end
  end
end

module ActionController::Helpers::ClassMethods
  def all_helpers_from_path(path); end
  def helper_attr(*attrs); end

  sig { returns(ActionView::Base) }
  def helpers; end

  def modules_for_helpers(args); end

  private

  def all_application_helpers; end
end

class ActionController::InvalidAuthenticityToken < ::ActionController::ActionControllerError
end

class ActionController::InvalidCrossOriginRequest < ::ActionController::ActionControllerError
end

class ActionController::Metal < AbstractController::Base
  def initialize; end

  def content_type(*_, &_); end
  def content_type=(arg); end
  def controller_name; end
  def dispatch(name, request, response); end
  def headers(*_, &_); end
  def location(*_, &_); end
  def location=(arg); end
  def media_type(*_, &_); end
  def middleware_stack; end
  def middleware_stack=(val); end
  def middleware_stack?; end

  sig { returns(ActionController::Parameters) }
  def params; end

  def params=(val); end
  def performed?; end

  sig { returns(ActionDispatch::Request) }
  def request; end

  def request=(_); end
  def reset_session; end

  sig { returns(ActionDispatch::Response) }
  def response; end

  def response=(_); end
  def response_body=(body); end
  def response_code(*_, &_); end
  def session(*_, &_); end
  def set_request!(request); end
  def set_response!(response); end
  def status(*_, &_); end
  def status=(arg); end
  def to_a; end
  def url_for(string); end

  class << self
    def action(name); end
    def binary_params_for?(action); end
    def controller_name; end
    def dispatch(name, req, res); end
    def inherited(base); end
    def make_response!(request); end
    def middleware; end
    def middleware_stack=(val); end
    def middleware_stack?; end
    def use(*args, &block); end
  end
end

# https://api.rubyonrails.org/classes/ActionController/MimeResponds.html
module ActionController::MimeResponds
  sig do
    params(
      mimes: T.nilable(Symbol),
      block: T.nilable(T.proc.params(arg0: ActionController::MimeResponds::Collector).void)
    ).void
  end
  def respond_to(*mimes, &block); end
end

class ActionController::MimeResponds::Collector
  include(::AbstractController::Collector)

  def initialize(mimes, variant = T.unsafe(nil)); end

  def all(*args, &block); end
  def any(*args, &block); end
  def custom(mime_type, &block); end
  def format; end
  def format=(_); end
  def negotiate_format(request); end
  def response; end
end

class ActionController::ParameterMissing < ::KeyError
  def initialize(param); end

  def param; end
end

module ActionController::Redirecting
  extend(::ActiveSupport::Concern)

  include(::ActiveSupport::Benchmarkable)
  include(::AbstractController::Logger)
  include(::ActionDispatch::Routing::UrlFor)
  include(::AbstractController::UrlFor)
  include(::ActionController::UrlFor)

  def _compute_redirect_to_location(request, options); end
  def redirect_back(fallback_location:, allow_other_host: T.unsafe(nil), **args); end
  def redirect_to(options = T.unsafe(nil), response_options = T.unsafe(nil)); end

  private

  def _extract_redirect_to_status(options, response_options); end
  def _url_host_allowed?(url); end

  class << self
    def _compute_redirect_to_location(request, options); end
  end
end

class ActionController::Renderer
  def initialize(controller, env, defaults); end

  def controller; end
  def defaults; end
  def new(env = T.unsafe(nil)); end
  def render(*args); end
  def with_defaults(defaults); end

  private

  def normalize_keys(env); end
  def rack_key_for(key); end
  def rack_value_for(key, value); end

  class << self
    def for(controller, env = T.unsafe(nil), defaults = T.unsafe(nil)); end
  end
end

ActionController::Renderer::DEFAULTS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

ActionController::Renderer::IDENTITY = T.let(T.unsafe(nil), Proc)

ActionController::Renderer::RACK_KEY_TRANSLATION = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

ActionController::Renderer::RACK_VALUE_TRANSLATION = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module ActionController::Renderers
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActionController::Renderers::ClassMethods)

  def _render_to_body_with_renderer(options); end
  def _render_with_renderer_js(js, options); end
  def _render_with_renderer_json(json, options); end
  def _render_with_renderer_xml(xml, options); end
  def render_to_body(options); end

  class << self
    def _render_with_renderer_method_name(key); end
    def add(key, &block); end
    def remove(key); end
  end
end

module ActionController::Renderers::All
  extend(::ActiveSupport::Concern)

  include(::ActionController::Renderers)
end

module ActionController::Renderers::ClassMethods
  def use_renderer(*args); end
  def use_renderers(*args); end
end

ActionController::Renderers::RENDERERS = T.let(T.unsafe(nil), T::Set[T.untyped])

module ActionController::Rendering
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActionController::Rendering::ClassMethods)

  def process_action(*_); end
  def render(*args); end
  def render_to_body(options = T.unsafe(nil)); end
  def render_to_string(*_); end

  private

  def _normalize_args(action = T.unsafe(nil), options = T.unsafe(nil), &blk); end
  def _normalize_options(options); end
  def _normalize_text(options); end
  def _process_options(options); end
  def _process_variant(options); end
  def _render_in_priorities(options); end
  def _set_html_content_type; end
  def _set_rendered_content_type(format); end
end

module ActionController::Rendering::ClassMethods
  def inherited(klass); end
  def render(*_, &_); end
  def renderer; end
  def setup_renderer!; end
end

ActionController::Rendering::RENDER_FORMATS_IN_PRIORITY = T.let(T.unsafe(nil), T::Array[T.untyped])

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
  def protect_from_forgery(only: nil, except: nil, if: nil, unless: nil, prepend: false, with: nil, exception: nil, reset_session: nil, null_session: nil); end

  sig { params(options: T::Hash[T.untyped, T.untyped]).void }
  def skip_forgery_protection(options = T.unsafe(nil)); end

  private

  def protection_method_class(name); end
end

class ActionController::RespondToMismatchError < ::ActionController::ActionControllerError
  def initialize(message = T.unsafe(nil)); end
end

ActionController::RespondToMismatchError::DEFAULT_MESSAGE = T.let(T.unsafe(nil), String)

class ActionController::RoutingError < ::ActionController::ActionControllerError
  def initialize(message, failures = T.unsafe(nil)); end

  def failures; end
end

class ActionController::SessionOverflowError < ::ActionController::ActionControllerError
  def initialize(message = T.unsafe(nil)); end
end

ActionController::SessionOverflowError::DEFAULT_MESSAGE = T.let(T.unsafe(nil), String)

module ActionController::StrongParameters
  sig { returns(ActionController::Parameters) }
  def params; end
end

class ActionController::UnknownFormat < ::ActionController::ActionControllerError
end

class ActionController::UnknownHttpMethod < ::ActionController::ActionControllerError
end

module ActionController::UrlFor
  extend(::ActiveSupport::Concern)

  include(::ActionDispatch::Routing::UrlFor)
  include(::AbstractController::UrlFor)

  def url_options; end
end

class ActionController::UrlGenerationError < ::ActionController::ActionControllerError
end

module ActionDispatch::Http::Parameters
  sig { returns(ActionController::Parameters) }
  def parameters(); end

  # params is an alias of parameters
  sig { returns(ActionController::Parameters) }
  def params(); end
end

class ActionDispatch::RemoteIp
  def initialize(app, ip_spoofing_check = T.unsafe(nil), custom_proxies = T.unsafe(nil)); end

  def call(env); end
  def check_ip; end
  def proxies; end
end

class ActionDispatch::RemoteIp::GetIp
  def initialize(req, check_ip, proxies); end

  def calculate_ip; end
  def to_s; end

  private

  def filter_proxies(ips); end
  def ips_from(header); end
end

class ActionDispatch::RemoteIp::IpSpoofAttackError < ::StandardError
end

ActionDispatch::RemoteIp::TRUSTED_PROXIES = T.let(T.unsafe(nil), T::Array[T.untyped])

class ActionDispatch::Request
  # Provides access to the request's HTTP headers, for example:
  #
  # ```ruby
  # request.headers["Content-Type"] # => "text/plain"
  # ```
  sig { returns(ActionDispatch::Http::Headers) }
  def headers; end

  # Returns a `String` with the last requested path including their params.
  #
  # ```ruby
  # # get '/foo'
  # request.original_fullpath # => '/foo'
  #
  # # get '/foo?bar'
  # request.original_fullpath # => '/foo?bar'
  # ```
  sig { returns(String) }
  def original_fullpath; end

  # Returns the `String` full path including params of the last URL requested.
  #
  # ```ruby
  # # get "/articles"
  # request.fullpath # => "/articles"
  #
  # # get "/articles?page=2"
  # request.fullpath # => "/articles?page=2"
  # ```
  sig { returns(String) }
  def fullpath; end

  # Returns the original request URL as a `String`.
  #
  # ```ruby
  # # get "/articles?page=2"
  # request.original_url # => "http://www.example.com/articles?page=2"
  # ```
  sig { returns(String) }
  def original_url; end

  # The `String` MIME type of the request.
  #
  # ```
  # # get "/articles"
  # request.media_type # => "application/x-www-form-urlencoded"
  # ```
  sig { returns(String) }
  def media_type; end

  # Returns the content length of the request as an integer.
  sig { returns(Integer) }
  def content_length; end

  # Returns the IP address of client as a `String`.
  sig { returns(String) }
  def ip; end

  # Returns the IP address of client as a `String`,
  # usually set by the RemoteIp middleware.
  sig { returns(String) }
  def remote_ip; end

  # Returns the unique request id, which is based on either the X-Request-Id header that can
  # be generated by a firewall, load balancer, or web server or by the RequestId middleware
  # (which sets the action_dispatch.request_id environment variable).
  #
  # This unique ID is useful for tracing a request from end-to-end as part of logging or debugging.
  # This relies on the Rack variable set by the ActionDispatch::RequestId middleware.
  sig { returns(String) }
  def request_id; end

  # Returns true if the request has a header matching the given key parameter.
  #
  # ```ruby
  # request.key? :ip_spoofing_check # => true
  # ```
  sig { params(key: Symbol).returns(T::Boolean) }
  def key?(key); end

  # True if the request came from localhost, 127.0.0.1, or ::1.
  sig { returns(T::Boolean) }
  def local?; end
end

class ActionDispatch::Response
  # include(::Rack::Response::Helpers)
  include(::ActionDispatch::Http::FilterRedirect)
  include(::ActionDispatch::Http::Cache::Response)
  include(::MonitorMixin)

  def initialize(status = T.unsafe(nil), header = T.unsafe(nil), body = T.unsafe(nil)); end

  def [](*_, &_); end
  def []=(*_, &_); end
  def _cache_control; end
  def _cache_control=(v); end
  def abort; end
  def await_commit; end
  def await_sent; end
  def body; end
  def body=(body); end
  def body_parts; end
  def charset; end
  def charset=(charset); end
  def close; end
  def code; end
  def commit!; end
  def committed?; end
  def content_type; end
  def content_type=(content_type); end
  def cookies; end
  def default_charset; end
  def default_charset=(obj); end
  def default_headers; end
  def default_headers=(obj); end
  def delete_header(key); end
  def each(&block); end
  def get_header(key); end
  def has_header?(key); end
  def header; end
  def headers; end
  def media_type; end
  def message; end
  def prepare!; end
  def redirect_url; end
  def request; end
  def request=(_); end
  def reset_body!; end
  def response_code; end
  def return_only_media_type_on_content_type; end
  def return_only_media_type_on_content_type=(obj); end
  def send_file(path); end
  def sending!; end
  def sending?; end
  def sending_file=(v); end
  def sent!; end
  def sent?; end
  def set_header(key, v); end
  def status; end
  def status=(status); end
  def status_message; end
  def stream; end
  def to_a; end
  def write(string); end

  private

  def assign_default_content_type_and_charset!; end
  def before_committed; end
  def before_sending; end
  def build_buffer(response, body); end
  def handle_no_content!; end
  def munge_body_object(body); end
  def parse_content_type(content_type); end
  def parsed_content_type_header; end
  def rack_response(status, header); end
  def set_content_type(content_type, charset); end

  class << self
    def create(status = T.unsafe(nil), header = T.unsafe(nil), body = T.unsafe(nil), default_headers: T.unsafe(nil)); end
    def default_charset; end
    def default_charset=(obj); end
    def default_headers; end
    def default_headers=(obj); end
    def merge_default_headers(original, default); end
    def return_only_media_type_on_content_type; end
    def return_only_media_type_on_content_type=(obj); end
  end
end

class ActionDispatch::Response::Buffer
  def initialize(response, buf); end

  def abort; end
  def body; end
  def close; end
  def closed?; end
  def each(&block); end
  def write(string); end

  private

  def each_chunk(&block); end
end

ActionDispatch::Response::CONTENT_TYPE = T.let(T.unsafe(nil), String)

ActionDispatch::Response::CONTENT_TYPE_PARSER = T.let(T.unsafe(nil), Regexp)

class ActionDispatch::Response::ContentTypeHeader < ::Struct
  Elem = type_member(fixed: T.untyped)

  def charset; end
  def charset=(_); end
  def mime_type; end
  def mime_type=(_); end

  class << self
    def [](*_); end
    def inspect; end
    def members; end
    def new(*_); end
  end
end

class ActionDispatch::Response::FileBody
  def initialize(path); end

  def body; end
  def each; end
  def to_path; end
end

class ActionDispatch::Response::Header
  def initialize(response, header); end

  def []=(k, v); end
  def merge(other); end
  def to_hash; end
end

ActionDispatch::Response::LOCATION = T.let(T.unsafe(nil), String)

ActionDispatch::Response::NO_CONTENT_CODES = T.let(T.unsafe(nil), T::Array[T.untyped])

ActionDispatch::Response::NullContentTypeHeader = T.let(T.unsafe(nil), ActionDispatch::Response::ContentTypeHeader)

class ActionDispatch::Response::RackBody
  def initialize(response); end

  def body; end
  def close; end
  def each(*args, &block); end
  def respond_to?(method, include_private = T.unsafe(nil)); end
  def to_ary; end
  def to_path; end
end

ActionDispatch::Response::SET_COOKIE = T.let(T.unsafe(nil), String)

module ActionDispatch::Http
  include(::ActiveSupport::Deprecation::DeprecatedConstantAccessor)
  extend(::ActiveSupport::Autoload)
end

module ActionDispatch::Http::Cache
end

module ActionDispatch::Http::Cache::Request
  def etag_matches?(etag); end
  def fresh?(response); end
  def if_modified_since; end
  def if_none_match; end
  def if_none_match_etags; end
  def not_modified?(modified_at); end
end

ActionDispatch::Http::Cache::Request::HTTP_IF_MODIFIED_SINCE = T.let(T.unsafe(nil), String)

ActionDispatch::Http::Cache::Request::HTTP_IF_NONE_MATCH = T.let(T.unsafe(nil), String)

module ActionDispatch::Http::Cache::Response
  def cache_control; end
  def date; end
  def date=(utc_time); end
  def date?; end
  def etag=(weak_validators); end
  def etag?; end
  def last_modified; end
  def last_modified=(utc_time); end
  def last_modified?; end
  def strong_etag=(strong_validators); end
  def strong_etag?; end
  def weak_etag=(weak_validators); end
  def weak_etag?; end

  private

  def cache_control_headers; end
  def cache_control_segments; end
  def generate_strong_etag(validators); end
  def generate_weak_etag(validators); end
  def handle_conditional_get!; end
  def merge_and_normalize_cache_control!(cache_control); end
  def prepare_cache_control!; end
end

ActionDispatch::Http::Cache::Response::DATE = T.let(T.unsafe(nil), String)

ActionDispatch::Http::Cache::Response::DEFAULT_CACHE_CONTROL = T.let(T.unsafe(nil), String)

ActionDispatch::Http::Cache::Response::LAST_MODIFIED = T.let(T.unsafe(nil), String)

ActionDispatch::Http::Cache::Response::MUST_REVALIDATE = T.let(T.unsafe(nil), String)

ActionDispatch::Http::Cache::Response::NO_CACHE = T.let(T.unsafe(nil), String)

ActionDispatch::Http::Cache::Response::PRIVATE = T.let(T.unsafe(nil), String)

ActionDispatch::Http::Cache::Response::PUBLIC = T.let(T.unsafe(nil), String)

ActionDispatch::Http::Cache::Response::SPECIAL_KEYS = T.let(T.unsafe(nil), T::Set[T.untyped])

class ActionDispatch::Http::ContentDisposition
  def initialize(disposition:, filename:); end

  def ascii_filename; end
  def disposition; end
  def filename; end
  def to_s; end
  def utf8_filename; end

  private

  def percent_escape(string, pattern); end

  class << self
    def format(disposition:, filename:); end
  end
end

ActionDispatch::Http::ContentDisposition::RFC_5987_ESCAPED_CHAR = T.let(T.unsafe(nil), Regexp)

ActionDispatch::Http::ContentDisposition::TRADITIONAL_ESCAPED_CHAR = T.let(T.unsafe(nil), Regexp)

module ActionDispatch::Http::FilterParameters
  def initialize; end

  def filtered_env; end
  def filtered_parameters; end
  def filtered_path; end

  private

  def env_filter; end
  def filtered_query_string; end
  def parameter_filter; end
  def parameter_filter_for(filters); end
end

ActionDispatch::Http::FilterParameters::ENV_MATCH = T.let(T.unsafe(nil), T::Array[T.untyped])

ActionDispatch::Http::FilterParameters::KV_RE = T.let(T.unsafe(nil), String)

ActionDispatch::Http::FilterParameters::NULL_ENV_FILTER = T.let(T.unsafe(nil), ActiveSupport::ParameterFilter)

ActionDispatch::Http::FilterParameters::NULL_PARAM_FILTER = T.let(T.unsafe(nil), ActiveSupport::ParameterFilter)

ActionDispatch::Http::FilterParameters::PAIR_RE = T.let(T.unsafe(nil), Regexp)

module ActionDispatch::Http::FilterRedirect
  def filtered_location; end

  private

  def location_filter_match?; end
  def location_filters; end
end

ActionDispatch::Http::FilterRedirect::FILTERED = T.let(T.unsafe(nil), String)

class ActionDispatch::Http::Headers
  include(::Enumerable)
  Elem = type_member(fixed: T.untyped)

  def initialize(request); end

  def [](key); end
  def []=(key, value); end
  def add(key, value); end
  def each(&block); end
  def env; end
  def fetch(key, default = T.unsafe(nil)); end
  def include?(key); end
  def key?(key); end
  def merge(headers_or_env); end
  def merge!(headers_or_env); end

  private

  def env_name(key); end

  class << self
    def from_hash(hash); end
  end
end

ActionDispatch::Http::Headers::CGI_VARIABLES = T.let(T.unsafe(nil), T::Set[T.untyped])

ActionDispatch::Http::Headers::DEFAULT = T.let(T.unsafe(nil), Object)

ActionDispatch::Http::Headers::HTTP_HEADER = T.let(T.unsafe(nil), Regexp)

module ActionDispatch::Http::MimeNegotiation
  extend(::ActiveSupport::Concern)

  def accepts; end
  def content_mime_type; end
  def content_type; end
  def format(view_path = T.unsafe(nil)); end
  def format=(extension); end
  def formats; end
  def formats=(extensions); end
  def has_content_type?; end
  def negotiate_mime(order); end
  def variant; end
  def variant=(variant); end

  private

  def format_from_path_extension; end
  def use_accept_header; end
  def valid_accept_header; end
end

ActionDispatch::Http::MimeNegotiation::BROWSER_LIKE_ACCEPTS = T.let(T.unsafe(nil), Regexp)

ActionDispatch::Http::MimeNegotiation::RESCUABLE_MIME_FORMAT_ERRORS = T.let(T.unsafe(nil), T::Array[T.untyped])

ActionDispatch::Http::ParameterFilter = ActiveSupport::ParameterFilter

module ActionDispatch::Http::Parameters
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActionDispatch::Http::Parameters::ClassMethods)

  def parameters; end
  def params; end
  def path_parameters; end
  def path_parameters=(parameters); end

  private

  def binary_params_for?(controller, action); end
  def log_parse_error_once; end
  def params_parsers; end
  def parse_formatted_parameters(parsers); end
  def set_binary_encoding(params, controller, action); end
end

module ActionDispatch::Http::Parameters::ClassMethods
  def parameter_parsers=(parsers); end
end

ActionDispatch::Http::Parameters::DEFAULT_PARSERS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

ActionDispatch::Http::Parameters::PARAMETERS_KEY = T.let(T.unsafe(nil), String)

class ActionDispatch::Http::Parameters::ParseError < ::StandardError
  def initialize; end
end

module ActionDispatch::Http::URL
  def initialize; end

  def domain(tld_length = T.unsafe(nil)); end
  def host; end
  def host_with_port; end
  def optional_port; end
  def port; end
  def port_string; end
  def protocol; end
  def raw_host_with_port; end
  def server_port; end
  def standard_port; end
  def standard_port?; end
  def subdomain(tld_length = T.unsafe(nil)); end
  def subdomains(tld_length = T.unsafe(nil)); end
  def tld_length; end
  def tld_length=(obj); end
  def url; end

  class << self
    def extract_domain(host, tld_length); end
    def extract_subdomain(host, tld_length); end
    def extract_subdomains(host, tld_length); end
    def full_url_for(options); end
    def path_for(options); end
    def tld_length; end
    def tld_length=(obj); end
    def url_for(options); end

    private

    def add_anchor(path, anchor); end
    def add_params(path, params); end
    def add_trailing_slash(path); end
    def build_host_url(host, port, protocol, options, path); end
    def extract_domain_from(host, tld_length); end
    def extract_subdomains_from(host, tld_length); end
    def named_host?(host); end
    def normalize_host(_host, options); end
    def normalize_port(port, protocol); end
    def normalize_protocol(protocol); end
  end
end

ActionDispatch::Http::URL::HOST_REGEXP = T.let(T.unsafe(nil), Regexp)

ActionDispatch::Http::URL::IP_HOST_REGEXP = T.let(T.unsafe(nil), Regexp)

ActionDispatch::Http::URL::PROTOCOL_REGEXP = T.let(T.unsafe(nil), Regexp)

class ActionDispatch::Http::UploadedFile
  def initialize(hash); end

  def close(unlink_now = T.unsafe(nil)); end
  def content_type; end
  def content_type=(_); end
  def eof?; end
  def headers; end
  def headers=(_); end
  def open; end
  def original_filename; end
  def original_filename=(_); end
  def path; end
  def read(length = T.unsafe(nil), buffer = T.unsafe(nil)); end
  def rewind; end
  def size; end
  def tempfile; end
  def tempfile=(_); end
  def to_io; end
  def to_path; end
end

class ActionDispatch::Http::Headers
  include(::Enumerable)
  Elem = type_member(fixed: T.untyped)

  def initialize(request); end

  def [](key); end
  def []=(key, value); end
  def add(key, value); end
  def each(&block); end
  def env; end
  def fetch(key, default = T.unsafe(nil)); end
  def include?(key); end
  def key?(key); end
  def merge(headers_or_env); end
  def merge!(headers_or_env); end

  private

  def env_name(key); end

  class << self
    def from_hash(hash); end
  end
end

ActionDispatch::Http::Headers::CGI_VARIABLES = T.let(T.unsafe(nil), T::Set[T.untyped])

ActionDispatch::Http::Headers::DEFAULT = T.let(T.unsafe(nil), Object)

ActionDispatch::Http::Headers::HTTP_HEADER = T.let(T.unsafe(nil), Regexp)

class ActionDispatch::Routing::RouteSet
  def initialize(config = T.unsafe(nil)); end

  def add_polymorphic_mapping(klass, options, &block); end
  def add_route(mapping, name); end
  def add_url_helper(name, options, &block); end
  def api_only?; end
  def append(&block); end
  def call(env); end
  def clear!; end
  def default_scope; end
  def default_scope=(_); end
  def default_url_options; end
  def default_url_options=(_); end
  def define_mounted_helper(name, script_namer = T.unsafe(nil)); end
  def disable_clear_and_finalize; end
  def disable_clear_and_finalize=(_); end
  def draw(&block); end
  def eager_load!; end
  def empty?; end
  def env_key; end
  def extra_keys(options, recall = T.unsafe(nil)); end
  def find_relative_url_root(options); end
  def find_script_name(options); end
  def formatter; end
  def formatter=(_); end
  def generate_extras(options, recall = T.unsafe(nil)); end
  def inspect; end
  def mounted_helpers; end
  def named_routes; end
  def named_routes=(_); end
  def optimize_routes_generation?; end
  def path_for(options, route_name = T.unsafe(nil)); end
  def polymorphic_mappings; end
  def prepend(&block); end
  def recognize_path(path, environment = T.unsafe(nil)); end
  def recognize_path_with_request(req, path, extras, raise_on_missing: T.unsafe(nil)); end
  def relative_url_root; end
  def request_class; end
  def resources_path_names; end
  def resources_path_names=(_); end
  def router; end
  def router=(_); end
  def routes; end
  def set; end
  def set=(_); end
  def url_for(options, route_name = T.unsafe(nil), url_strategy = T.unsafe(nil)); end
  def url_helpers(supports_path = T.unsafe(nil)); end

  private

  def eval_block(block); end
  def generate(route_key, options, recall = T.unsafe(nil)); end
  def make_request(env); end

  class << self
    def default_resources_path_names; end
    def new_with_config(config); end
  end
end

class ActionController::Parameters
  sig { params(other: ActionController::Parameters).returns(T::Boolean) }
  def ==(other); end

  sig { params(key: T.any(String, Symbol), value: T.untyped).void }
  def []=(key, value); end

  sig { returns(T.nilable(T::Array[T.any(String, Symbol)])) }
  def always_permitted_parameters; end

  sig { params(obj: T.nilable(T::Array[T.any(String, Symbol)])).void }
  def always_permitted_parameters=(obj); end

  sig { params(options: T.untyped).returns(T.untyped) }
  def as_json(options = nil); end

  sig { returns(T.untyped) }
  def deep_dup; end

  sig { params(key: T.any(String, Symbol), block: T.untyped).returns(T.untyped) }
  def delete(key, &block); end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def dig(*keys); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def each_pair(&block); end

  # each is an alias of each_pair
  sig { params(block: T.untyped).returns(T.untyped) }
  def each(&block); end

  sig { returns(T::Boolean) }
  def empty?; end

  sig { params(keys: T.any(String, Symbol)).returns(ActionController::Parameters) }
  def except(*keys); end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def extract!(*keys); end

  sig { params(key: T.any(String, Symbol), args: T.untyped).returns(T.untyped) }
  def fetch(key, *args); end

  sig { params(key: T.any(String, Symbol)).returns(T::Boolean) }
  def has_key?(key); end

  sig { params(value: T.untyped).returns(T::Boolean) }
  def has_value?(value); end

  sig { params(key: T.any(String, Symbol)).returns(T::Boolean) }
  def include?(key); end

  sig { params(parameters: T.untyped).void }
  def initialize(parameters = nil); end

  sig { returns(String) }
  def inspect; end

  sig { params(key: T.any(String, Symbol)).returns(T::Boolean) }
  def key?(key); end

  sig { returns(T::Array[T.untyped]) }
  def keys; end

  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def merge!(other_hash); end

  sig { params(other_hash: T.untyped).returns(ActionController::Parameters) }
  def merge(other_hash); end

  sig { returns(T.untyped) }
  def parameters; end

  sig { returns(T.self_type) }
  def permit!; end

  # You can pass _a lot_ of stuff to permit, so filters is left untyped for now.
  sig { params(filters: T.untyped).returns(ActionController::Parameters) }
  def permit(*filters); end

  sig { params(new_permitted: T.untyped).void }
  def permitted=(new_permitted); end

  sig { returns(T::Boolean) }
  def permitted?; end

  sig { params(block: T.untyped).returns(T.untyped) }
  def reject!(&block); end

  # delete_if is an alias of reject!
  sig { params(block: T.untyped).returns(T.untyped) }
  def delete_if(&block); end

  sig { params(block: T.untyped).returns(T.untyped) }
  def reject(&block); end

  sig do
    params(
      key: T.any(String, Symbol),
    ).returns(
      T.nilable(
        T.any(
          String,
          Numeric,
          ActionController::Parameters,
        ),
      ),
    )
  end
  def [](key); end

  sig do
    params(
      key: T.any(
        String,
        Symbol,
        T::Array[T.any(String, Symbol)],
      ),
    ).returns(
      T.any(
        String,
        Numeric,
        T::Array[T.untyped],
        ActionController::Parameters,
      ),
    )
  end
  def require(key); end

  # required is an alias of require
  sig do
    params(
      key: T.any(
        String,
        Symbol,
        T::Array[T.any(String, Symbol)],
      ),
    ).returns(
      T.any(
        String,
        Numeric,
        T::Array[T.untyped],
        ActionController::Parameters,
      ),
    )
  end
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

  sig { returns(T.any(Symbol, T::Boolean)) }
  def self.action_on_unpermitted_parameters; end

  sig { params(obj: T.any(Symbol, T::Boolean)).void }
  def self.action_on_unpermitted_parameters=(obj); end

  sig { returns(T::Array[T.any(String, Symbol)]) }
  def self.always_permitted_parameters; end

  sig { params(obj: T::Array[T.any(String, Symbol)]).void }
  def self.always_permitted_parameters=(obj); end

  sig { returns(T::Boolean) }
  def self.permit_all_parameters; end

  sig { params(obj: T::Boolean).void }
  def self.permit_all_parameters=(obj); end

  sig { params(keys: T.any(String, Symbol)).returns(ActionController::Parameters) }
  def slice!(*keys); end

  sig { params(keys: T.any(String, Symbol)).returns(ActionController::Parameters) }
  def slice(*keys); end

  sig { returns(ActiveSupport::HashWithIndifferentAccess) }
  def to_h; end

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def to_hash; end

  # to_param is an alias of to_query
  sig { params(args: String).returns(T.nilable(String)) }
  def to_param(*args); end

  sig { params(args: String).returns(T.nilable(String)) }
  def to_query(*args); end

  sig { returns(String) }
  def to_s; end

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

  sig { params(value: T.untyped).returns(T::Boolean) }
  def value?(value); end

  sig { returns(T::Array[T.untyped]) }
  def values; end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def values_at(*keys); end
end

class ActionDispatch::Routing::RouteSet
  sig { params(blk: T.proc.bind(ActionDispatch::Routing::Mapper).void).void }
  def draw(&blk); end
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
      to: T.nilable(T.any(String, Symbol, T.proc.params(arg0: T.untyped).returns(T.untyped))),
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
      constraints: T.untyped,
      controller: T.nilable(T.any(String, Symbol)),
      concerns: T.nilable(T.any(Symbol, T::Array[Symbol])),
      defaults: T.untyped,
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
    constraints: nil,
    controller: nil,
    concerns: nil,
    defaults: nil,
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

  # Technically, path doesn't have a default value set. However, this is
  # necessary to allow code like `root to: 'home#index'`.
  sig { params(path: T.nilable(String), to: T.untyped, as: T.nilable(Symbol)).returns(T.untyped) }
  def root(path = T.unsafe(nil), to: nil, as: nil); end

  sig { returns(T.untyped) }
  def shallow; end

  sig { returns(T::Boolean) }
  def shallow?; end
end

module ActionDispatch::Routing::PolymorphicRoutes
  def edit_polymorphic_path(record_or_hash, options = T.unsafe(nil)); end
  def edit_polymorphic_url(record_or_hash, options = T.unsafe(nil)); end
  def new_polymorphic_path(record_or_hash, options = T.unsafe(nil)); end
  def new_polymorphic_url(record_or_hash, options = T.unsafe(nil)); end
  def polymorphic_path(record_or_hash_or_array, options = T.unsafe(nil)); end
  def polymorphic_url(record_or_hash_or_array, options = T.unsafe(nil)); end

  private

  def polymorphic_mapping(record); end
  def polymorphic_path_for_action(action, record_or_hash, options); end
  def polymorphic_url_for_action(action, record_or_hash, options); end
end

module ActionDispatch::Routing::UrlFor
  include(::ActionDispatch::Routing::PolymorphicRoutes)
  extend(::ActiveSupport::Concern)

  def initialize(*_); end

  def full_url_for(options = T.unsafe(nil)); end
  def route_for(name, *args); end
  def url_for(options = T.unsafe(nil)); end
  def url_options; end

  protected

  def optimize_routes_generation?; end

  private

  def _routes_context; end
  def _with_routes(routes); end
end

module Mime
  class << self
    def [](type); end
    def fetch(type); end
  end
end

Mime::ALL = T.let(T.unsafe(nil), Mime::AllType)

class Mime::AllType < ::Mime::Type
  include(::Singleton)
  extend(::Singleton::SingletonClassMethods)

  def initialize; end

  def all?; end
  def html?; end
end

Mime::EXTENSION_LOOKUP = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

Mime::LOOKUP = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

class Mime::Mimes
  include(::Enumerable)
  Elem = type_member(fixed: T.untyped)

  def initialize; end

  def <<(type); end
  def delete_if; end
  def each; end
  def symbols; end
end

class Mime::NullType
  include(::Singleton)
  extend(::Singleton::SingletonClassMethods)

  def nil?; end
  def ref; end

  private

  def method_missing(method, *args); end
  def respond_to_missing?(method, _); end
end

Mime::SET = T.let(T.unsafe(nil), Mime::Mimes)

class Mime::Type
  def initialize(string, symbol = T.unsafe(nil), synonyms = T.unsafe(nil)); end

  def ==(mime_type); end
  def ===(list); end
  def =~(mime_type); end
  def all?; end
  def eql?(other); end
  def hash; end
  def html?; end
  def ref; end
  def symbol; end
  def to_s; end
  def to_str; end
  def to_sym; end

  protected

  def string; end
  def synonyms; end

  private

  def method_missing(method, *args); end
  def respond_to_missing?(method, include_private = T.unsafe(nil)); end
  def to_a; end
  def to_ary; end

  class << self
    def lookup(string); end
    def lookup_by_extension(extension); end
    def parse(accept_header); end
    def parse_data_with_trailing_star(type); end
    def parse_trailing_star(accept_header); end
    def register(string, symbol, mime_type_synonyms = T.unsafe(nil), extension_synonyms = T.unsafe(nil), skip_lookup = T.unsafe(nil)); end
    def register_alias(string, symbol, extension_synonyms = T.unsafe(nil)); end
    def register_callback(&block); end
    def unregister(symbol); end
  end
end

class Mime::Type::AcceptItem
  def initialize(index, name, q = T.unsafe(nil)); end

  def <=>(item); end
  def index; end
  def index=(_); end
  def name; end
  def name=(_); end
  def q; end
  def q=(_); end
  def to_s; end
end

class Mime::Type::AcceptList
  class << self
    def find_item_by_name(array, name); end
    def sort!(list); end
  end
end

class Mime::Type::InvalidMimeType < ::StandardError
end

Mime::Type::MIME_NAME = T.let(T.unsafe(nil), String)

Mime::Type::MIME_PARAMETER = T.let(T.unsafe(nil), String)

Mime::Type::MIME_PARAMETER_KEY = T.let(T.unsafe(nil), String)

Mime::Type::MIME_PARAMETER_VALUE = T.let(T.unsafe(nil), String)

Mime::Type::MIME_REGEXP = T.let(T.unsafe(nil), Regexp)
