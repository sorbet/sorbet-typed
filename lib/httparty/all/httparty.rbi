# typed: strong

module HTTParty
  include(::HTTParty::ModuleInheritableAttributes)

  mixes_in_class_methods(::HTTParty::ClassMethods)

  class << self
    def copy(path, options = T.unsafe(nil), &block); end
    def delete(path, options = T.unsafe(nil), &block); end
    def get(path, options = T.unsafe(nil), &block); end
    def head(path, options = T.unsafe(nil), &block); end
    def included(base); end
    def move(path, options = T.unsafe(nil), &block); end
    def normalize_base_uri(url); end
    def options(path, options = T.unsafe(nil), &block); end
    def patch(path, options = T.unsafe(nil), &block); end
    def post(path, options = T.unsafe(nil), &block); end
    def put(path, options = T.unsafe(nil), &block); end
  end
end

class HTTParty::Basement
  include(::HTTParty)
  include(::HTTParty::ModuleInheritableAttributes)
  extend(::HTTParty::ClassMethods)
  extend(::HTTParty::ModuleInheritableAttributes::ClassMethods)

  class << self
    def default_cookies; end
    def default_cookies=(_arg0); end
    def default_options; end
    def default_options=(_arg0); end
  end
end

module HTTParty::ClassMethods
  def base_uri(uri = T.unsafe(nil)); end
  def basic_auth(u, p); end
  def ciphers(cipher_names); end
  def connection_adapter(custom_adapter = T.unsafe(nil), options = T.unsafe(nil)); end
  def cookies(h = T.unsafe(nil)); end
  def copy(path, options = T.unsafe(nil), &block); end
  def debug_output(stream = T.unsafe(nil)); end
  def default_options; end
  def default_params(h = T.unsafe(nil)); end
  def default_timeout(value); end
  def delete(path, options = T.unsafe(nil), &block); end
  def digest_auth(u, p); end
  def disable_rails_query_string_format; end
  def follow_redirects(value = T.unsafe(nil)); end
  def format(f = T.unsafe(nil)); end
  def get(path, options = T.unsafe(nil), &block); end
  def head(path, options = T.unsafe(nil), &block); end
  def headers(h = T.unsafe(nil)); end
  def http_proxy(addr = T.unsafe(nil), port = T.unsafe(nil), user = T.unsafe(nil), pass = T.unsafe(nil)); end
  def lock(path, options = T.unsafe(nil), &block); end
  def logger(logger, level = T.unsafe(nil), format = T.unsafe(nil)); end
  def maintain_method_across_redirects(value = T.unsafe(nil)); end
  def mkcol(path, options = T.unsafe(nil), &block); end
  def move(path, options = T.unsafe(nil), &block); end
  def no_follow(value = T.unsafe(nil)); end
  def open_timeout(value); end
  def options(path, options = T.unsafe(nil), &block); end
  def parser(custom_parser = T.unsafe(nil)); end
  def patch(path, options = T.unsafe(nil), &block); end
  def pem(pem_contents, password = T.unsafe(nil)); end
  def pkcs12(p12_contents, password); end
  def post(path, options = T.unsafe(nil), &block); end
  def put(path, options = T.unsafe(nil), &block); end
  def query_string_normalizer(normalizer); end
  def raise_on(codes = T.unsafe(nil)); end
  def read_timeout(value); end
  def resend_on_redirect(value = T.unsafe(nil)); end
  def ssl_ca_file(path); end
  def ssl_ca_path(path); end
  def ssl_version(version); end
  def unlock(path, options = T.unsafe(nil), &block); end
  def uri_adapter(uri_adapter); end
  def write_timeout(value); end

  private

  def ensure_method_maintained_across_redirects(options); end
  def perform_request(http_method, path, options, &block); end
  def process_cookies(options); end
  def validate_format; end
  def validate_timeout_argument(timeout_type, value); end
end

class HTTParty::ConnectionAdapter
  def initialize(uri, options = T.unsafe(nil)); end

  def connection; end
  def options; end
  def uri; end

  private

  def add_max_retries?(max_retries); end
  def add_timeout?(timeout); end
  def attach_ssl_certificates(http, options); end
  def clean_host(host); end
  def from_ruby_version(ruby_version, option: T.unsafe(nil), warn: T.unsafe(nil)); end
  def ssl_implied?(uri); end
  def strip_ipv6_brackets(host); end
  def verify_ssl_certificate?; end

  class << self
    def call(uri, options); end
    def default_cert_store; end
  end
end

HTTParty::ConnectionAdapter::OPTION_DEFAULTS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

HTTParty::ConnectionAdapter::StripIpv6BracketsRegex = T.let(T.unsafe(nil), Regexp)

class HTTParty::CookieHash < ::Hash
  K = type_member(fixed: T.untyped)
  V = type_member(fixed: T.untyped)
  Elem = type_member(fixed: T.untyped)

  def add_cookies(data); end
  def to_cookie_string; end
end

HTTParty::CookieHash::CLIENT_COOKIES = T.let(T.unsafe(nil), T::Array[T.untyped])

class HTTParty::DuplicateLocationHeader < ::HTTParty::ResponseError
end

class HTTParty::Error < ::StandardError
end

module HTTParty::HashConversions
  class << self
    def normalize_keys(key, value); end
    def normalize_param(key, value); end
    def to_params(hash); end
  end
end

class HTTParty::HeadersProcessor
  def initialize(headers, options); end

  def call; end
  def headers; end
  def options; end

  private

  def process_dynamic_headers; end
end

module HTTParty::Logger
  class << self
    def add_formatter(name, formatter); end
    def build(logger, level, formatter); end
    def formatters; end
  end
end

class HTTParty::Logger::ApacheFormatter
  def initialize(logger, level); end

  def format(request, response); end
  def level; end
  def level=(_arg0); end
  def logger; end
  def logger=(_arg0); end

  private

  def content_length; end
  def current_time; end
  def http_method; end
  def message; end
  def path; end
  def request; end
  def response; end
end

HTTParty::Logger::ApacheFormatter::TAG_NAME = T.let(T.unsafe(nil), String)

class HTTParty::Logger::CurlFormatter
  def initialize(logger, level); end

  def format(request, response); end
  def level; end
  def level=(_arg0); end
  def logger; end
  def logger=(_arg0); end

  private

  def current_time; end
  def log(direction, line = T.unsafe(nil)); end
  def log_hash(hash); end
  def log_headers; end
  def log_query; end
  def log_request; end
  def log_response; end
  def log_response_headers; end
  def log_url; end
  def messages; end
  def messages=(_arg0); end
  def request; end
  def response; end
end

HTTParty::Logger::CurlFormatter::IN = T.let(T.unsafe(nil), String)

HTTParty::Logger::CurlFormatter::OUT = T.let(T.unsafe(nil), String)

HTTParty::Logger::CurlFormatter::TAG_NAME = T.let(T.unsafe(nil), String)

class HTTParty::Logger::LogstashFormatter
  def initialize(logger, level); end

  def format(request, response); end
  def level; end
  def level=(_arg0); end
  def logger; end
  def logger=(_arg0); end

  private

  def content_length; end
  def current_time; end
  def http_method; end
  def logstash_message; end
  def message; end
  def path; end
  def request; end
  def response; end
end

HTTParty::Logger::LogstashFormatter::TAG_NAME = T.let(T.unsafe(nil), String)

module HTTParty::ModuleInheritableAttributes
  mixes_in_class_methods(::HTTParty::ModuleInheritableAttributes::ClassMethods)

  class << self
    def hash_deep_dup(hash); end
    def included(base); end
  end
end

module HTTParty::ModuleInheritableAttributes::ClassMethods
  def inherited(subclass); end
  def mattr_inheritable(*args); end
end

class HTTParty::Parser
  def initialize(body, format); end

  def body; end
  def format; end
  def parse; end

  protected

  def csv; end
  def html; end
  def json; end
  def parse_supported_format; end
  def plain; end
  def supports_format?; end
  def xml; end

  class << self
    def call(body, format); end
    def format_from_mimetype(mimetype); end
    def formats; end
    def supported_formats; end
    def supports_format?(format); end
  end
end

HTTParty::Parser::SupportedFormats = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

HTTParty::Parser::UTF8_BOM = T.let(T.unsafe(nil), String)

class HTTParty::RedirectionTooDeep < ::HTTParty::ResponseError
end

class HTTParty::Request
  def initialize(http_method, path, o = T.unsafe(nil)); end

  def base_uri; end
  def connection_adapter; end
  def format; end
  def handle_unauthorized(&block); end
  def http_method; end
  def http_method=(_arg0); end
  def last_response; end
  def last_response=(_arg0); end
  def last_uri; end
  def last_uri=(_arg0); end
  def options; end
  def options=(_arg0); end
  def parser; end
  def path; end
  def path=(uri); end
  def perform(&block); end
  def raw_body; end
  def redirect; end
  def redirect=(_arg0); end
  def request_uri(uri); end
  def uri; end

  private

  def assume_utf16_is_big_endian; end
  def capture_cookies(response); end
  def check_duplicate_location_header; end
  def credentials; end
  def digest_auth?; end
  def encode_text(text, content_type); end
  def format_from_mimetype(mimetype); end
  def handle_host_redirection; end
  def handle_response(body, &block); end
  def http; end
  def normalize_query(query); end
  def parse_response(body); end
  def password; end
  def post?; end
  def query_string(uri); end
  def query_string_normalizer; end
  def response_has_digest_auth_challenge?; end
  def response_redirects?; end
  def response_unauthorized?; end
  def send_authorization_header?; end
  def set_basic_auth_from_uri; end
  def setup_digest_auth; end
  def setup_raw_request; end
  def username; end
  def validate; end
end

class HTTParty::Request::Body
  def initialize(params, query_string_normalizer: T.unsafe(nil), force_multipart: T.unsafe(nil)); end

  def boundary; end
  def call; end
  def multipart?; end

  private

  def content_type(object); end
  def file?(object); end
  def file_name(object); end
  def force_multipart; end
  def generate_multipart; end
  def has_file?(value); end
  def normalize_query(query); end
  def params; end
  def query_string_normalizer; end
end

HTTParty::Request::JSON_API_QUERY_STRING_NORMALIZER = T.let(T.unsafe(nil), Proc)

class HTTParty::Request::MultipartBoundary
  class << self
    def generate; end
  end
end

HTTParty::Request::NON_RAILS_QUERY_STRING_NORMALIZER = T.let(T.unsafe(nil), Proc)

HTTParty::Request::SupportedHTTPMethods = T.let(T.unsafe(nil), T::Array[T.untyped])

HTTParty::Request::SupportedURISchemes = T.let(T.unsafe(nil), T::Array[T.untyped])

class HTTParty::Response
  def initialize(request, response, parsed_block, options = T.unsafe(nil)); end

  def _dump(_level); end
  def accepted?; end
  def already_reported?; end
  def bad_gateway?; end
  def bad_request?; end
  def body; end
  def client_error?; end
  def code; end
  def conflict?; end
  def continue?; end
  def created?; end
  def display(port = T.unsafe(nil)); end
  def early_hints?; end
  def expectation_failed?; end
  def failed_dependency?; end
  def forbidden?; end
  def found?; end
  def gateway_time_out?; end
  def gateway_timeout?; end
  def gone?; end
  def headers; end
  def http_version; end
  def im_used?; end
  def information?; end
  def inspect; end
  def insufficient_storage?; end
  def internal_server_error?; end
  def length_required?; end
  def locked?; end
  def loop_detected?; end
  def method_not_allowed?; end
  def misdirected_request?; end
  def moved_permanently?; end
  def multi_status?; end
  def multiple_choice?; end
  def multiple_choices?; end
  def network_authentication_required?; end
  def nil?; end
  def no_content?; end
  def non_authoritative_information?; end
  def not_acceptable?; end
  def not_extended?; end
  def not_found?; end
  def not_implemented?; end
  def not_modified?; end
  def ok?; end
  def parsed_response; end
  def partial_content?; end
  def payload_too_large?; end
  def payment_required?; end
  def permanent_redirect?; end
  def precondition_failed?; end
  def precondition_required?; end
  def pretty_print(pp); end
  def processing?; end
  def proxy_authentication_required?; end
  def range_not_satisfiable?; end
  def redirection?; end
  def request; end
  def request_entity_too_large?; end
  def request_header_fields_too_large?; end
  def request_time_out?; end
  def request_timeout?; end
  def request_uri_too_long?; end
  def requested_range_not_satisfiable?; end
  def reset_content?; end
  def response; end
  def see_other?; end
  def server_error?; end
  def service_unavailable?; end
  def success?; end
  def switch_protocol?; end
  def tap; end
  def temporary_redirect?; end
  def to_s; end
  def too_many_requests?; end
  def unauthorized?; end
  def unavailable_for_legal_reasons?; end
  def unprocessable_entity?; end
  def unsupported_media_type?; end
  def upgrade_required?; end
  def uri_too_long?; end
  def use_proxy?; end
  def variant_also_negotiates?; end
  def version_not_supported?; end

  protected

  def method_missing(name, *args, &block); end
  def throw_exception; end

  private

  def respond_to_missing?(name, *args); end
  def warn_about_nil_deprecation; end

  class << self
    def _load(data); end
    def underscore(string); end
  end
end

HTTParty::Response::CODES_TO_OBJ = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

class HTTParty::Response::Headers < ::SimpleDelegator
  include(::Net::HTTPHeader)

  def initialize(header_values = T.unsafe(nil)); end

  def ==(other); end
end

class HTTParty::ResponseError < ::HTTParty::Error
  def initialize(response); end

  def response; end
end

class HTTParty::ResponseFragment < ::SimpleDelegator
  def initialize(fragment, http_response, connection); end

  def code; end
  def connection; end
  def http_response; end
end

class HTTParty::TextEncoder
  def initialize(text, assume_utf16_is_big_endian: T.unsafe(nil), content_type: T.unsafe(nil)); end

  def assume_utf16_is_big_endian; end
  def call; end
  def content_type; end
  def text; end

  private

  def can_encode?; end
  def charset; end
  def encode_utf_16; end
  def encode_with_ruby_encoding; end
  def encoded_text; end
end

class HTTParty::UnsupportedFormat < ::HTTParty::Error
end

class HTTParty::UnsupportedURIScheme < ::HTTParty::Error
end

module HTTParty::Utils
  class << self
    def stringify_keys(hash); end
  end
end

HTTParty::VERSION = T.let(T.unsafe(nil), String)

module Net::HTTPHeader
  def digest_auth(username, password, response); end
end

class Net::HTTPHeader::DigestAuthenticator
  def initialize(username, password, method, path, response_header); end

  def authorization_header; end
  def cookie_header; end

  private

  def a1; end
  def a2; end
  def algorithm_present?; end
  def md5(str); end
  def opaque_present?; end
  def parse(response_header); end
  def parse_cookies(response_header); end
  def qop_present?; end
  def random; end
  def request_digest; end
  def use_md5_sess?; end
end
