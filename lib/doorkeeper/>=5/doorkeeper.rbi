# typed: true

module Doorkeeper
  class << self
    def authenticate(request, methods = T.unsafe(nil)); end
    def config; end
    def configuration; end
    def configure(&block); end
    def setup_application_owner; end
    def setup_orm_adapter; end
    def setup_orm_models; end
  end
end

module Doorkeeper::AccessGrantMixin
  include(::Doorkeeper::OAuth::Helpers)
  include(::Doorkeeper::Models::Expirable)
  include(::Doorkeeper::Models::Revocable)
  include(::Doorkeeper::Models::Accessible)
  include(::Doorkeeper::Models::Scopes)
  extend(::ActiveSupport::Concern)

  include(::Doorkeeper::Models::Orderable)
  include(::Doorkeeper::Models::SecretStorable)
  include(::Doorkeeper::Models::ResourceOwnerable)

  mixes_in_class_methods(::Doorkeeper::AccessGrantMixin::ClassMethods)

  def uses_pkce?; end
end

module Doorkeeper::AccessGrantMixin::ClassMethods
  def by_token(token); end
  def fallback_secret_strategy; end
  def generate_code_challenge(code_verifier); end
  def pkce_supported?; end
  def revoke_all_for(application_id, resource_owner, clock = T.unsafe(nil)); end
  def secret_strategy; end
end

module Doorkeeper::AccessTokenMixin
  include(::Doorkeeper::OAuth::Helpers)
  include(::Doorkeeper::Models::Expirable)
  include(::Doorkeeper::Models::Reusable)
  include(::Doorkeeper::Models::Revocable)
  include(::Doorkeeper::Models::Accessible)
  include(::Doorkeeper::Models::Scopes)
  extend(::ActiveSupport::Concern)

  include(::Doorkeeper::Models::Orderable)
  include(::Doorkeeper::Models::SecretStorable)
  include(::Doorkeeper::Models::ResourceOwnerable)

  mixes_in_class_methods(::Doorkeeper::AccessTokenMixin::ClassMethods)

  def acceptable?(scopes); end
  def as_json(_options = T.unsafe(nil)); end
  def plaintext_refresh_token; end
  def plaintext_token; end
  def revoke_previous_refresh_token!; end
  def same_credential?(access_token); end
  def same_resource_owner?(access_token); end
  def token_type; end
  def use_refresh_token?; end

  private

  def attributes_for_token_generator; end
  def generate_refresh_token; end
  def generate_token; end
  def old_refresh_token; end
  def token_generator; end
end

module Doorkeeper::AccessTokenMixin::ClassMethods
  def authorized_tokens_for(application_id, resource_owner); end
  def by_previous_refresh_token(previous_refresh_token); end
  def by_refresh_token(refresh_token); end
  def by_token(token); end
  def create_for(application:, resource_owner:, scopes:, **token_attributes); end
  def fallback_secret_strategy; end
  def find_access_token_in_batches(relation, *args, &block); end
  def find_matching_token(relation, application, scopes); end
  def find_or_create_for(application:, resource_owner:, scopes:, **token_attributes); end
  def last_authorized_token_for(application_id, resource_owner); end
  def matching_token_for(application, resource_owner, scopes); end
  def revoke_all_for(application_id, resource_owner, clock = T.unsafe(nil)); end
  def scopes_match?(token_scopes, param_scopes, app_scopes); end
  def secret_strategy; end
end

class Doorkeeper::AccessGrant < ::ActiveRecord::Base
  include(::Doorkeeper::Orm::ActiveRecord::Mixins::AccessGrant)
end

class Doorkeeper::AccessToken < ::ActiveRecord::Base
  include(::Doorkeeper::Orm::ActiveRecord::Mixins::AccessToken)
end

class Doorkeeper::Application < ::ActiveRecord::Base
  include(::Doorkeeper::Orm::ActiveRecord::Mixins::Application)
end

class Doorkeeper::ApplicationController < ::ActionController::Base
end

class Doorkeeper::ApplicationsController < ::Doorkeeper::ApplicationController
  def create; end
  def destroy; end
  def edit; end
  def index; end
  def new; end
  def show; end
  def update; end

  private

  def application_params; end
  def i18n_scope(action); end
  def set_application; end
end

class Doorkeeper::ApplicationMetalController < ::ActionController::API
end

module Doorkeeper::ApplicationMixin
  include(::Doorkeeper::OAuth::Helpers)
  include(::Doorkeeper::Models::Scopes)
  extend(::ActiveSupport::Concern)

  include(::Doorkeeper::Models::Orderable)
  include(::Doorkeeper::Models::SecretStorable)

  mixes_in_class_methods(::Doorkeeper::ApplicationMixin::ClassMethods)

  def redirect_uri=(uris); end
  def secret_matches?(input); end
end

module Doorkeeper::ApplicationMixin::ClassMethods
  def by_uid(uid); end
  def by_uid_and_secret(uid, secret); end
  def fallback_secret_strategy; end
  def secret_strategy; end
end

class Doorkeeper::AuthorizationsController < ::Doorkeeper::ApplicationController
  def create; end
  def destroy; end
  def new; end

  private

  def after_successful_authorization(context); end
  def authorization; end
  def authorize_response; end
  def before_successful_authorization(context = nil); end
  def build_context(**attributes); end
  def matching_token?; end
  def pre_auth_param_fields; end
  def pre_auth_params; end
  def pre_auth; end
  def redirect_or_render(auth); end
  def render_error; end
  def render_success; end
  def strategy; end
end

class Doorkeeper::AuthorizedApplicationsController < ::Doorkeeper::ApplicationController
  def destroy; end
  def index; end
end

class Doorkeeper::Config
  extend(::Doorkeeper::Config::Option)

  def access_grant_class(*_args); end
  def access_grant_model; end
  def access_token_class(*_args); end
  def access_token_expires_in(*_args); end
  def access_token_generator(*_args); end
  def access_token_methods; end
  def access_token_model; end
  def active_record_options(*_args); end
  def after_successful_authorization(*_args); end
  def after_successful_strategy_response(*_args); end
  def allow_blank_redirect_uri(*_args); end
  def allow_blank_redirect_uri?(application = T.unsafe(nil)); end
  def allow_grant_flow_for_client(*_args); end
  def allow_grant_flow_for_client?(grant_flow, client); end
  def allow_token_introspection(*_args); end
  def api_only; end
  def application_class(*_args); end
  def application_model; end
  def application_secret_fallback_strategy; end
  def application_secret_hashed?; end
  def application_secret_strategy; end
  def authenticate_admin(*_args); end
  def authenticate_resource_owner(*_args); end
  def authorization_code_expires_in(*_args); end
  def authorization_response_types; end
  def authorize_resource_owner_for_client(*_args); end
  def base_controller(*_args); end
  def base_metal_controller(*_args); end
  def before_successful_authorization(*_args); end
  def before_successful_strategy_response(*_args); end
  def builder_class; end
  def client_credentials_methods; end
  def confirm_application_owner?; end
  def custom_access_token_expires_in(*_args); end
  def custom_introspection_response(*_args); end
  def default_generator_method(*_args); end
  def default_scopes; end
  def enable_application_owner?; end
  def enforce_configured_scopes?; end
  def enforce_content_type; end
  def forbid_redirect_uri(*_args); end
  def force_ssl_in_redirect_uri(*_args); end
  def grant_flows(*_args); end
  def handle_auth_errors(*_args); end
  def native_redirect_uri(*_args); end
  def option_defined?(name); end
  def optional_scopes; end
  def orm(*_args); end
  def polymorphic_resource_owner?; end
  def raise_on_errors?; end
  def realm(*_args); end
  def refresh_token_enabled?; end
  def resolve_controller(name); end
  def resource_owner_from_credentials(*_args); end
  def reuse_access_token; end
  def revoke_previous_client_credentials_token?; end
  def scopes; end
  def scopes_by_grant_type; end
  def skip_authorization(*_args); end
  def token_grant_types; end
  def token_lookup_batch_size(*_args); end
  def token_reuse_limit(*_args); end
  def token_secret_fallback_strategy; end
  def token_secret_strategy; end
  def validate!; end

  private

  def calculate_authorization_response_types; end
  def calculate_token_grant_types; end
  def option_set?(instance_key); end
  def validate_reuse_access_token_value; end
  def validate_secret_strategies; end
  def validate_token_reuse_limit; end

  class << self
    def builder_class; end
  end
end

class Doorkeeper::Config::AbstractBuilder
  def initialize(config = T.unsafe(nil), &block); end

  def build; end
  def config; end
end

class Doorkeeper::Config::Builder < ::Doorkeeper::Config::AbstractBuilder
  def access_grant_class(*args, &block); end
  def access_token_class(*args, &block); end
  def access_token_expires_in(*args, &block); end
  def access_token_generator(*args, &block); end
  def access_token_methods(*methods); end
  def active_record_options(*args, &block); end
  def admin_authenticator(*args, &block); end
  def after_successful_authorization(*args, &block); end
  def after_successful_strategy_response(*args, &block); end
  def allow_blank_redirect_uri(*args, &block); end
  def allow_grant_flow_for_client(*args, &block); end
  def allow_token_introspection(*args, &block); end
  def api_only; end
  def application_class(*args, &block); end
  def authorization_code_expires_in(*args, &block); end
  def authorize_resource_owner_for_client(*args, &block); end
  def base_controller(*args, &block); end
  def base_metal_controller(*args, &block); end
  def before_successful_authorization(*args, &block); end
  def before_successful_strategy_response(*args, &block); end
  def client_credentials(*methods); end
  def confirm_application_owner; end
  def custom_access_token_expires_in(*args, &block); end
  def custom_introspection_response(*args, &block); end
  def default_generator_method(*args, &block); end
  def default_scopes(*scopes); end
  def enable_application_owner(opts = T.unsafe(nil)); end
  def enforce_configured_scopes; end
  def enforce_content_type; end
  def forbid_redirect_uri(*args, &block); end
  def force_ssl_in_redirect_uri(*args, &block); end
  def grant_flows(*args, &block); end
  def handle_auth_errors(*args, &block); end
  def hash_application_secrets(using: T.unsafe(nil), fallback: T.unsafe(nil)); end
  def hash_token_secrets(using: T.unsafe(nil), fallback: T.unsafe(nil)); end
  def native_redirect_uri(*args, &block); end
  def optional_scopes(*scopes); end
  def orm(*args, &block); end
  def realm(*args, &block); end
  def resource_owner_authenticator(*args, &block); end
  def resource_owner_from_credentials(*args, &block); end
  def reuse_access_token; end
  def revoke_previous_client_credentials_token; end
  def scopes_by_grant_type(hash = T.unsafe(nil)); end
  def skip_authorization(*args, &block); end
  def token_lookup_batch_size(*args, &block); end
  def token_reuse_limit(*args, &block); end
  def use_polymorphic_resource_owner; end
  def use_refresh_token(enabled = T.unsafe(nil), &block); end

  private

  def configure_secrets_for(type, using:, fallback:); end
end

module Doorkeeper::Config::Option
  def option(name, options = T.unsafe(nil)); end

  class << self
    def extended(base); end
  end
end

module Doorkeeper::DashboardHelper
  def doorkeeper_errors_for(object, method); end
  def doorkeeper_submit_path(application); end
end

class Doorkeeper::Engine < ::Rails::Engine
end

module Doorkeeper::Errors
end

class Doorkeeper::Errors::BaseResponseError < ::Doorkeeper::Errors::DoorkeeperError
  def initialize(response); end

  def response; end
end

class Doorkeeper::Errors::DoorkeeperError < ::StandardError
  sig { returns(Symbol) }
  def type; end
end

class Doorkeeper::Errors::InvalidGrantReuse < ::Doorkeeper::Errors::DoorkeeperError
  def type; end
end

class Doorkeeper::Errors::InvalidToken < ::Doorkeeper::Errors::BaseResponseError
end

class Doorkeeper::Errors::InvalidTokenStrategy < ::Doorkeeper::Errors::DoorkeeperError
  def type; end
end

class Doorkeeper::Errors::MissingRequiredParameter < ::Doorkeeper::Errors::DoorkeeperError
  def initialize(missing_param); end

  def missing_param; end
  def type; end
end

class Doorkeeper::Errors::NoOrmCleaner < ::Doorkeeper::Errors::DoorkeeperError
end

class Doorkeeper::Errors::TokenExpired < ::Doorkeeper::Errors::InvalidToken
end

class Doorkeeper::Errors::TokenForbidden < ::Doorkeeper::Errors::InvalidToken
end

class Doorkeeper::Errors::TokenGeneratorNotFound < ::Doorkeeper::Errors::DoorkeeperError
end

class Doorkeeper::Errors::TokenRevoked < ::Doorkeeper::Errors::InvalidToken
end

class Doorkeeper::Errors::TokenUnknown < ::Doorkeeper::Errors::InvalidToken
end

class Doorkeeper::Errors::UnableToGenerateToken < ::Doorkeeper::Errors::DoorkeeperError
end

module Doorkeeper::Helpers
end

module Doorkeeper::Helpers::Controller

  private

  def authenticate_admin!; end
  def authenticate_resource_owner!; end
  def config_methods; end
  def current_resource_owner; end
  def doorkeeper_token; end
  def enforce_content_type; end
  def get_error_response_from_exception(exception); end
  def handle_token_exception(exception); end
  def resource_owner_from_credentials; end
  def server; end
  def skip_authorization?; end
  def x_www_form_urlencoded?; end
end

class Doorkeeper::MissingConfiguration < ::StandardError
  def initialize; end
end

class Doorkeeper::MissingConfigurationBuilderClass < ::StandardError
end

module Doorkeeper::Models
end

module Doorkeeper::Models::Accessible
  def accessible?; end
end

module Doorkeeper::Models::Expirable
  def expired?; end
  def expires_at; end
  def expires_in_seconds; end
end

module Doorkeeper::Models::Orderable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Doorkeeper::Models::Orderable::ClassMethods)
end

module Doorkeeper::Models::Orderable::ClassMethods
  def ordered_by(attribute, direction = T.unsafe(nil)); end
end

module Doorkeeper::Models::ResourceOwnerable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Doorkeeper::Models::ResourceOwnerable::ClassMethods)
end

module Doorkeeper::Models::ResourceOwnerable::ClassMethods
  def by_resource_owner(resource_owner); end

  protected

  def resource_owner_id_for(resource_owner); end
end

module Doorkeeper::Models::Reusable
  def reusable?; end
end

module Doorkeeper::Models::Revocable
  def revoke(clock = T.unsafe(nil)); end
  def revoked?; end
end

module Doorkeeper::Models::Scopes
  def includes_scope?(*required_scopes); end
  def scopes; end
  def scopes=(value); end
  def scopes_string; end
end

module Doorkeeper::Models::SecretStorable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Doorkeeper::Models::SecretStorable::ClassMethods)

  def fallback_secret_strategy(*_, &_); end
  def secret_strategy(*_, &_); end
end

module Doorkeeper::Models::SecretStorable::ClassMethods
  def fallback_secret_strategy; end
  def find_by_fallback_token(attr, plain_secret); end
  def find_by_plaintext_token(attr, token); end
  def secret_matches?(*_, &_); end
  def secret_strategy; end
  def upgrade_fallback_value(instance, attr, plain_secret); end
end

module Doorkeeper::OAuth
end

Doorkeeper::OAuth::AUTHORIZATION_CODE = T.let(T.unsafe(nil), String)

module Doorkeeper::OAuth::Authorization
end

class Doorkeeper::OAuth::Authorization::Code
  def initialize(pre_auth, resource_owner); end

  def issue_token!; end
  def oob_redirect; end
  def pre_auth; end
  def resource_owner; end
  def token; end

  private

  def access_grant_attributes; end
  def authorization_code_expires_in; end
  def pkce_attributes; end
  def pkce_supported?; end
end

class Doorkeeper::OAuth::Authorization::Context
  def initialize(client, grant_type, scopes); end

  def client; end
  def grant_type; end
  def scopes; end
end

class Doorkeeper::OAuth::Authorization::Token
  def initialize(pre_auth, resource_owner); end

  def issue_token!; end
  def oob_redirect; end
  def pre_auth; end
  def resource_owner; end
  def token; end

  private

  def controller; end

  class << self
    def access_token_expires_in(configuration, context); end
    def build_context(pre_auth_or_oauth_client, grant_type, scopes); end
    def refresh_token_enabled?(server, context); end
  end
end

class Doorkeeper::OAuth::Authorization::URIBuilder
  class << self
    def uri_with_fragment(url, parameters = T.unsafe(nil)); end
    def uri_with_query(url, parameters = T.unsafe(nil)); end

    private

    def build_query(parameters = T.unsafe(nil)); end
  end
end

class Doorkeeper::OAuth::AuthorizationCodeRequest < ::Doorkeeper::OAuth::BaseRequest
  def initialize(server, grant, client, parameters = T.unsafe(nil)); end

  def access_token; end
  def client; end
  def code_verifier; end
  def grant; end
  def invalid_request_reason; end
  def missing_param; end
  def redirect_uri; end

  private

  def before_successful_response; end
  def generate_code_challenge(code_verifier); end
  def pkce_supported?; end
  def validate_client; end
  def validate_code_verifier; end
  def validate_grant; end
  def validate_params; end
  def validate_pkce_support; end
  def validate_redirect_uri; end
end

class Doorkeeper::OAuth::BaseRequest
  include(::Doorkeeper::Validations)
  extend(::Doorkeeper::Validations::ClassMethods)

  def after_successful_response; end
  def authorize; end
  def before_successful_response; end
  def default_scopes(*_, &_); end
  def find_or_create_access_token(client, resource_owner, scopes, server); end
  def grant_type; end
  def scopes; end
  def server; end
  def server_config; end

  private

  def build_scopes; end
end

class Doorkeeper::OAuth::BaseResponse
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def body; end

  sig { returns(String) }
  def description; end

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def headers; end

  sig { returns(String) }
  def redirect_uri; end

  sig { returns(T::Boolean) }
  def redirectable?; end

  sig { returns(Symbol) }
  def status; end
end

Doorkeeper::OAuth::CLIENT_CREDENTIALS = T.let(T.unsafe(nil), String)

class Doorkeeper::OAuth::Client
  def initialize(application); end

  def application; end
  def id(*_, &_); end
  def name(*_, &_); end
  def redirect_uri(*_, &_); end
  def scopes(*_, &_); end
  def uid(*_, &_); end

  class << self
    def authenticate(credentials, method = T.unsafe(nil)); end
    def find(uid, method = T.unsafe(nil)); end
  end
end

class Doorkeeper::OAuth::Client::Credentials < ::Struct
  def blank?(*_, &_); end
  def secret; end
  def secret=(_); end
  def uid; end
  def uid=(_); end

  class << self
    def [](*_); end
    def from_basic(request); end
    def from_params(request); end
    def from_request(request, *credentials_methods); end
    def inspect; end
    def members; end
    def new(*_); end
  end
end

module Doorkeeper::OAuth::ClientCredentials
end

class Doorkeeper::OAuth::ClientCredentials::Creator
  def call(client, scopes, attributes = T.unsafe(nil)); end

  private

  def find_existing_token_for(client, scopes); end
  def lookup_existing_token?; end
  def server_config; end
  def with_revocation(existing_token:); end
end

class Doorkeeper::OAuth::ClientCredentials::Issuer
  def initialize(server, validator); end

  def create(client, scopes, creator = T.unsafe(nil)); end
  def error; end
  def token; end
  def validator; end

  private

  def create_token(client, scopes, creator); end
end

class Doorkeeper::OAuth::ClientCredentials::Validator
  include(::Doorkeeper::Validations)
  include(::Doorkeeper::OAuth::Helpers)
  extend(::Doorkeeper::Validations::ClassMethods)

  def initialize(server, request); end


  private

  def validate_client; end
  def validate_client_supports_grant_flow; end
  def validate_scopes; end
end

class Doorkeeper::OAuth::ClientCredentialsRequest < ::Doorkeeper::OAuth::BaseRequest
  def initialize(server, client, parameters = T.unsafe(nil)); end

  def access_token; end
  def client; end
  def error(*_, &_); end
  def error_response; end
  def issuer; end
  def original_scopes; end
  def response; end

  private

  def valid?; end
end

class Doorkeeper::OAuth::CodeRequest
  def initialize(pre_auth, resource_owner); end

  def authorize; end
  def deny; end
  def pre_auth; end
  def resource_owner; end
end

class Doorkeeper::OAuth::CodeResponse < ::Doorkeeper::OAuth::BaseResponse
  include(::Doorkeeper::OAuth::Helpers)

  def initialize(pre_auth, auth, options = T.unsafe(nil)); end

  def auth; end
  def issued_token; end
  def pre_auth; end
  def redirect_uri; end
  def redirectable?; end
  def response_on_fragment; end
end

class Doorkeeper::OAuth::Error < ::Struct
  def description; end
  def name; end
  def name=(_); end
  def state; end
  def state=(_); end

  class << self
    def [](*_); end
    def inspect; end
    def members; end
    def new(*_); end
  end
end

class Doorkeeper::OAuth::ErrorResponse < ::Doorkeeper::OAuth::BaseResponse
  include(::Doorkeeper::OAuth::Helpers)

  def initialize(attributes = T.unsafe(nil)); end

  def body; end
  def description(*_, &_); end
  def headers; end
  def name(*_, &_); end
  def raise_exception!; end
  def redirect_uri; end
  def redirectable?; end
  def state(*_, &_); end
  def status; end

  protected

  def exception_class; end
  def realm; end

  private

  def authenticate_info; end

  class << self
    def from_request(request, attributes = T.unsafe(nil)); end
  end
end

class Doorkeeper::OAuth::ForbiddenTokenResponse < ::Doorkeeper::OAuth::ErrorResponse
  def initialize(attributes = T.unsafe(nil)); end

  def description; end
  def headers; end
  def status; end

  protected

  def exception_class; end

  class << self
    def from_scopes(scopes, attributes = T.unsafe(nil)); end
  end
end

Doorkeeper::OAuth::GRANT_TYPES = T.let(T.unsafe(nil), Array)

module Doorkeeper::OAuth::Helpers
end

module Doorkeeper::OAuth::Helpers::ScopeChecker
  class << self
    def valid?(scope_str:, server_scopes:, app_scopes: T.unsafe(nil), grant_type: T.unsafe(nil)); end
  end
end

class Doorkeeper::OAuth::Helpers::ScopeChecker::Validator
  def initialize(scope_str, server_scopes, app_scopes, grant_type); end

  def parsed_scopes; end
  def scope_str; end
  def valid?; end

  private

  def permitted_to_grant_type?; end
  def valid_scopes(server_scopes, app_scopes); end
end

module Doorkeeper::OAuth::Helpers::URIChecker
  class << self
    def as_uri(url); end
    def hypertext_scheme?(uri); end
    def iff_host?(uri); end
    def loopback_uri?(uri); end
    def matches?(url, client_url); end
    def oob_uri?(uri); end
    def query_matches?(query, client_query); end
    def valid?(url); end
    def valid_for_authorization?(url, client_url); end
    def valid_scheme?(uri); end
  end
end

module Doorkeeper::OAuth::Helpers::UniqueToken
  class << self
    def default_generator_method; end
    def generate(options = T.unsafe(nil)); end
  end
end

module Doorkeeper::OAuth::Hooks
end

class Doorkeeper::OAuth::Hooks::Context
  def initialize(**attributes); end

  def auth; end
  def issued_token; end
  def pre_auth; end
end

Doorkeeper::OAuth::IMPLICIT = T.let(T.unsafe(nil), String)

class Doorkeeper::OAuth::InvalidRequestResponse < ::Doorkeeper::OAuth::ErrorResponse
  def initialize(attributes = T.unsafe(nil)); end

  def description; end
  def reason; end
  def redirectable?; end
  def status; end

  class << self
    def from_request(request, attributes = T.unsafe(nil)); end
  end
end

class Doorkeeper::OAuth::InvalidTokenResponse < ::Doorkeeper::OAuth::ErrorResponse
  def initialize(attributes = T.unsafe(nil)); end

  def description; end
  def reason; end
  def status; end

  protected

  def exception_class; end

  private

  def errors_mapping; end

  class << self
    def from_access_token(access_token, attributes = T.unsafe(nil)); end
  end
end

class Doorkeeper::OAuth::NonStandard
end

Doorkeeper::OAuth::NonStandard::IETF_WG_OAUTH2_OOB = T.let(T.unsafe(nil), String)

Doorkeeper::OAuth::NonStandard::IETF_WG_OAUTH2_OOB_AUTO = T.let(T.unsafe(nil), String)

Doorkeeper::OAuth::NonStandard::IETF_WG_OAUTH2_OOB_METHODS = T.let(T.unsafe(nil), Array)

Doorkeeper::OAuth::PASSWORD = T.let(T.unsafe(nil), String)

class Doorkeeper::OAuth::PasswordAccessTokenRequest < ::Doorkeeper::OAuth::BaseRequest
  include(::Doorkeeper::OAuth::Helpers)

  def initialize(server, client, resource_owner, parameters = T.unsafe(nil)); end

  def access_token; end
  def client; end
  def parameters; end
  def resource_owner; end

  private

  def before_successful_response; end
  def validate_client; end
  def validate_client_supports_grant_flow; end
  def validate_resource_owner; end
  def validate_scopes; end
end

class Doorkeeper::OAuth::PreAuthorization
  include(::Doorkeeper::Validations)
  extend(::Doorkeeper::Validations::ClassMethods)

  def initialize(server, parameters = T.unsafe(nil), resource_owner = T.unsafe(nil)); end

  def as_json(_options = T.unsafe(nil)); end
  def authorizable?; end
  def client; end
  def code_challenge; end
  def code_challenge_method; end
  def error_response; end
  def missing_param; end
  def redirect_uri; end
  def resource_owner; end
  def response_type; end
  def scope; end
  def scopes; end
  def state; end

  private

  def build_scopes; end
  def client_id; end
  def grant_type; end
  def pre_auth_hash; end
  def response_on_fragment?; end
  def server; end
  def validate_client; end
  def validate_client_id; end
  def validate_client_supports_grant_flow; end
  def validate_code_challenge_method; end
  def validate_params; end
  def validate_redirect_uri; end
  def validate_resource_owner_authorize_for_client; end
  def validate_response_type; end
  def validate_scopes; end
end

Doorkeeper::OAuth::REFRESH_TOKEN = T.let(T.unsafe(nil), String)

class Doorkeeper::OAuth::RefreshTokenRequest < ::Doorkeeper::OAuth::BaseRequest
  include(::Doorkeeper::OAuth::Helpers)

  def initialize(server, refresh_token, credentials, parameters = T.unsafe(nil)); end

  def access_token; end
  def client; end
  def credentials; end
  def missing_param; end
  def refresh_token; end

  private

  def before_successful_response; end
  def create_access_token; end
  def default_scopes; end
  def load_client(credentials); end
  def refresh_token_revoked_on_use?; end
  def validate_client; end
  def validate_client_match; end
  def validate_scope; end
  def validate_token; end
  def validate_token_presence; end
end

class Doorkeeper::OAuth::Scopes
  include(::Enumerable)
  include(::Comparable)

  def initialize; end

  def &(other); end
  def +(other); end
  def <=>(other); end
  def add(*scopes); end
  def all; end
  def each(*_, &_); end
  def empty?(*_, &_); end
  def exists?(scope); end
  def has_scopes?(scopes); end
  def scopes?(scopes); end
  def to_s; end

  private

  def to_array(other); end

  class << self
    def from_array(array); end
    def from_string(string); end
  end
end

class Doorkeeper::OAuth::Token
  class << self
    def authenticate(request, *methods); end
    def from_access_token_param(request); end
    def from_basic_authorization(request); end
    def from_bearer_authorization(request); end
    def from_bearer_param(request); end
    def from_request(request, *methods); end

    private

    def decode_basic_credentials_token(encoded_header); end
    def match?(header, pattern); end
    def token_from_basic_header(header, pattern); end
    def token_from_header(header, pattern); end
  end
end

class Doorkeeper::OAuth::TokenIntrospection
  def initialize(server, token); end

  def authorized?; end
  def error_response; end
  def to_json(*_); end

  private

  def active?; end
  def authorize!; end
  def authorized_client; end
  def authorized_token; end
  def authorized_token_matches_introspected?; end
  def customize_response(response); end
  def error; end
  def failure_response; end
  def invalid_request_reason; end
  def server; end
  def success_response; end
  def token; end
  def token_introspection_allowed?(auth_client: T.unsafe(nil), auth_token: T.unsafe(nil)); end
  def valid_authorized_token?; end
  def valid_token?; end
end

class Doorkeeper::OAuth::TokenRequest
  def initialize(pre_auth, resource_owner); end

  def authorize; end
  def deny; end
  def pre_auth; end
  def resource_owner; end
end

class Doorkeeper::OAuth::TokenResponse
  def initialize(token); end

  def body; end
  def headers; end
  def status; end
  def token; end
end

module Doorkeeper::Orm
end

module Doorkeeper::Orm::ActiveRecord
  class << self
    def initialize_application_owner!; end
    def initialize_models!; end
    def lazy_load(&block); end
    def models; end
  end
end

module Doorkeeper::Orm::ActiveRecord::Mixins::AccessGrant
  include(::Doorkeeper::AccessGrantMixin)

  def generate_token; end
  def plaintext_token; end
end

module Doorkeeper::Orm::ActiveRecord::Mixins::AccessToken
  include(::Doorkeeper::AccessTokenMixin)

  mixes_in_class_methods(::Doorkeeper::Orm::ActiveRecord::Mixins::AccessToken::ClassMethods)
end

module Doorkeeper::Orm::ActiveRecord::Mixins::AccessToken::ClassMethods
  def active_for(resource_owner); end
  def refresh_token_revoked_on_use?; end
end

module Doorkeeper::Orm::ActiveRecord::Mixins::Application
  include(::Doorkeeper::ApplicationMixin)

  mixes_in_class_methods(::Doorkeeper::Orm::ActiveRecord::Mixins::Application::ClassMethods)

  def plaintext_secret; end
  def read_attribute_for_serialization(key); end
  def renew_secret; end

  private

  def enforce_scopes?; end
  def extract_serializable_attributes(options = {}); end
  def generate_secret; end
  def generate_uid; end
  def scopes_match_configured; end
  def serializable_attributes; end
end

module Doorkeeper::Orm::ActiveRecord::Mixins::Application::ClassMethods
  def authorized_for(resource_owner); end
end

module Doorkeeper::Rails
end

module Doorkeeper::Rails::Helpers
  def doorkeeper_authorize!(*scopes); end
  def doorkeeper_forbidden_render_options(**_); end
  def doorkeeper_unauthorized_render_options(**_); end
  def valid_doorkeeper_token?; end

  private

  def doorkeeper_error; end
  def doorkeeper_invalid_token_response?; end
  def doorkeeper_render_error; end
  def doorkeeper_render_error_with(error); end
  def doorkeeper_render_options(error); end
  def doorkeeper_status_for_error(error, respond_not_found_when_forbidden); end
  def doorkeeper_token; end
end

class Doorkeeper::Rails::Routes
  include(::Doorkeeper::Rails::AbstractRouter)
  extend(::Doorkeeper::Rails::Routes::Registry)

  def initialize(routes, mapper = T.unsafe(nil), &block); end

  def generate_routes!(options); end
  def mapping; end

  private

  def application_routes(mapping); end
  def authorization_routes(mapping); end
  def authorized_applications_routes(mapping); end
  def introspect_routes(mapping); end
  def revoke_routes(mapping); end
  def token_info_routes(mapping); end
  def token_routes(mapping); end

  class << self
    def install!; end
    def mapping; end
  end
end

module Doorkeeper::Rails::Routes::Helper
  def use_doorkeeper(options = T.unsafe(nil), &block); end
end

class Doorkeeper::Rails::Routes::Mapper
  def initialize(mapping = T.unsafe(nil)); end

  def as(alias_names = T.unsafe(nil)); end
  def controllers(controller_names = T.unsafe(nil)); end
  def map(&block); end
  def skip_controllers(*controller_names); end
end

class Doorkeeper::Rails::Routes::Mapping
  def initialize; end

  def [](routes); end
  def as; end
  def as=(_); end
  def controllers; end
  def controllers=(_); end
  def skipped?(controller); end
  def skips; end
  def skips=(_); end
end

module Doorkeeper::Rails::Routes::Registry
  def register(routes); end
  def register_routes(routes); end
  def registered_routes; end
end

class Doorkeeper::Rails::Routes::Registry::InvalidRouterClass < ::StandardError
end

Doorkeeper::Rails::Routes::Registry::ROUTES_ACCESS_LOCK = T.let(T.unsafe(nil), Thread::Mutex)

Doorkeeper::Rails::Routes::Registry::ROUTES_DEFINITION_LOCK = T.let(T.unsafe(nil), Thread::Mutex)

module Doorkeeper::Rake
  class << self
    def load_tasks; end
  end
end

module Doorkeeper::Request
  class << self
    def authorization_strategy(response_type); end
    def get_strategy(grant_type, available); end
    def token_strategy(grant_type); end

    private

    def build_strategy_class(grant_or_request_type); end
    def token_grant_types; end
  end
end

class Doorkeeper::Request::AuthorizationCode < ::Doorkeeper::Request::Strategy
  def client(*_, &_); end
  def parameters(*_, &_); end
  def request; end

  private

  def grant; end
end

class Doorkeeper::Request::ClientCredentials < ::Doorkeeper::Request::Strategy
  def client(*_, &_); end
  def parameters(*_, &_); end
  def request; end
end

class Doorkeeper::Request::Code < ::Doorkeeper::Request::Strategy
  def current_resource_owner(*_, &_); end
  def pre_auth; end
  def request; end
end

class Doorkeeper::Request::Password < ::Doorkeeper::Request::Strategy
  def client(*_, &_); end
  def credentials(*_, &_); end
  def parameters(*_, &_); end
  def request; end
  def resource_owner(*_, &_); end
end

class Doorkeeper::Request::RefreshToken < ::Doorkeeper::Request::Strategy
  def credentials(*_, &_); end
  def parameters(*_, &_); end
  def refresh_token; end
  def request; end
end

class Doorkeeper::Request::Strategy
  def initialize(server); end

  def authorize(*_, &_); end
  def request; end
  def server; end
end

class Doorkeeper::Request::Token < ::Doorkeeper::Request::Strategy
  def current_resource_owner(*_, &_); end
  def pre_auth; end
  def request; end
end

module Doorkeeper::SecretStoring
end

class Doorkeeper::SecretStoring::BCrypt < ::Doorkeeper::SecretStoring::Base
  class << self
    def allows_restoring_secrets?; end
    def bcrypt_present?; end
    def secret_matches?(input, stored); end
    def transform_secret(plain_secret); end
    def validate_for(model); end
  end
end

class Doorkeeper::SecretStoring::Base
  class << self
    def allows_restoring_secrets?; end
    def restore_secret(_resource, _attribute); end
    def secret_matches?(input, stored); end
    def store_secret(resource, attribute, plain_secret); end
    def transform_secret(_plain_secret); end
    def validate_for(model); end
  end
end

class Doorkeeper::SecretStoring::Plain < ::Doorkeeper::SecretStoring::Base
  class << self
    def allows_restoring_secrets?; end
    def restore_secret(resource, attribute); end
    def transform_secret(plain_secret); end
  end
end

class Doorkeeper::SecretStoring::Sha256Hash < ::Doorkeeper::SecretStoring::Base
  class << self
    def allows_restoring_secrets?; end
    def transform_secret(plain_secret); end
  end
end

class Doorkeeper::Server
  def initialize(context); end

  def authorization_request(strategy); end
  def client; end
  def context; end
  def credentials; end
  def current_resource_owner; end
  def parameters; end
  def resource_owner; end
  def token_request(strategy); end
end

class Doorkeeper::StaleRecordsCleaner
  class << self
    def configured_orm; end
    def for(base_scope); end
    def new(base_scope); end
  end
end

Doorkeeper::StaleRecordsCleaner::CLEANER_CLASS = T.let(T.unsafe(nil), String)

class Doorkeeper::TokenInfoController < ::Doorkeeper::ApplicationMetalController
  def show; end
end

class Doorkeeper::TokensController < ::Doorkeeper::ApplicationMetalController
  def create; end
  def introspect; end
  def revoke; end

  private

  def after_successful_authorization(context); end
  def authorize_response; end
  def authorized?; end
  def before_successful_authorization(context = nil); end
  def build_context(**attributes); end
  def revocation_error_response; end
  def revoke_token; end
  def strategy; end
  def token; end
end

module Doorkeeper::VERSION
end

Doorkeeper::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)

Doorkeeper::VERSION::MINOR = T.let(T.unsafe(nil), Integer)

Doorkeeper::VERSION::STRING = T.let(T.unsafe(nil), String)

Doorkeeper::VERSION::TINY = T.let(T.unsafe(nil), Integer)

module Doorkeeper::Validations
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Doorkeeper::Validations::ClassMethods)

  def error; end
  def error=(_); end
  def valid?; end
  def validate; end
end

module Doorkeeper::Validations::ClassMethods
  def validate(attribute, options = T.unsafe(nil)); end
  def validations; end
end

module Doorkeeper::IPAddrLoopback
  def loopback?; end
end

module Doorkeeper::Rails::AbstractRouter
  extend(::ActiveSupport::Concern)

  def initialize(routes, mapper = T.unsafe(nil), &block); end

  def generate_routes!(**_options); end
  def routes; end

  private

  def map_route(name, method); end
end
