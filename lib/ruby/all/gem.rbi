# typed: strong
module Gem
  ConfigMap = T.let(nil, T.untyped)
  RbConfigPriorities = T.let(nil, T.untyped)
  RubyGemsPackageVersion = T.let(nil, T.untyped)
  RubyGemsVersion = T.let(nil, T.untyped)
  USE_BUNDLER_FOR_GEMDEPS = T.let(nil, T.untyped)

  sig { params(path: T.untyped).returns(T.untyped) }
  def self._deprecated_detect_gemdeps(path = T.unsafe(nil)); end

  sig { params(data: T.untyped).returns(T.untyped) }
  def self._deprecated_gunzip(data); end

  sig { params(data: T.untyped).returns(T.untyped) }
  def self._deprecated_gzip(data); end

  sig { params(data: T.untyped).returns(T.untyped) }
  def self._deprecated_inflate(data); end

  sig { params(name: T.untyped, args: T.untyped).returns(T.untyped) }
  def self.activate_bin_path(name, *args); end

  sig { params(base_dir: T.untyped).returns(T.untyped) }
  def self.default_ext_dir_for(base_dir); end

  sig { returns(T::Boolean) }
  def self.default_gems_use_full_paths?; end

  sig { returns(T.untyped) }
  def self.default_spec_cache_dir; end

  sig { params(data: T.untyped).returns(T.untyped) }
  def self.deflate(data); end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def self.detect_gemdeps(*args, &block); end

  sig { returns(T.untyped) }
  def self.dir; end

  sig { params(hook: T.untyped).returns(T.untyped) }
  def self.done_installing(&hook); end

  sig { returns(T.untyped) }
  def self.done_installing_hooks; end

  sig { params(dir: T.untyped, mode: T.untyped).returns(T.untyped) }
  def self.ensure_default_gem_subdirectories(dir = Gem.dir, mode = nil); end

  sig { params(dir: T.untyped, mode: T.untyped).returns(T.untyped) }
  def self.ensure_gem_subdirectories(dir = Gem.dir, mode = nil); end

  sig { params(dir: T.untyped, mode: T.untyped, subdirs: T.untyped).returns(T.untyped) }
  def self.ensure_subdirectories(dir, mode, subdirs); end

  sig { params(gem_name: T.untyped).returns(T.untyped) }
  def self.env_requirement(gem_name); end

  sig { returns(T.untyped) }
  def self.extension_api_version; end

  sig { params(glob: T.untyped, check_load_path: T.untyped).returns(T.untyped) }
  def self.find_files(glob, check_load_path = true); end

  sig { params(glob: T.untyped).returns(T.untyped) }
  def self.find_files_from_load_path(glob); end

  sig { params(glob: T.untyped, check_load_path: T.untyped).returns(T.untyped) }
  def self.find_latest_files(glob, check_load_path = T.unsafe(nil)); end

  sig { params(path: T.untyped).returns(T.untyped) }
  def self.find_unresolved_default_spec(path); end

  sig { params(_: T.untyped).returns(T.untyped) }
  def self.finish_resolve(*_); end

  sig { returns(T.untyped) }
  def self.gemdeps; end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def self.gunzip(*args, &block); end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def self.gzip(*args, &block); end

  sig { returns(T.untyped) }
  def self.host; end

  sig { params(host: T.untyped).returns(T.untyped) }
  def self.host=(host); end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def self.inflate(*args, &block); end

  sig { params(name: T.untyped, version: T.untyped, options: T.untyped).returns(T.untyped) }
  def self.install(name, version = T.unsafe(nil), *options); end

  sig { returns(T.untyped) }
  def self.install_extension_in_lib; end

  sig { returns(T.untyped) }
  def self.latest_rubygems_version; end

  sig { params(name: T.untyped).returns(T.untyped) }
  def self.latest_spec_for(name); end

  sig { params(name: T.untyped).returns(T.untyped) }
  def self.latest_version_for(name); end

  sig { returns(T.untyped) }
  def self.load_env_plugins; end

  sig { returns(T.untyped) }
  def self.load_path_insert_index; end

  sig { params(plugins: T.untyped).returns(T.untyped) }
  def self.load_plugin_files(plugins); end

  sig { returns(T.untyped) }
  def self.load_plugins; end

  sig { returns(T.untyped) }
  def self.load_yaml; end

  sig { returns(T.untyped) }
  def self.loaded_specs; end

  sig { params(depth: T.untyped).returns(T.untyped) }
  def self.location_of_caller(depth = T.unsafe(nil)); end

  sig { returns(T.untyped) }
  def self.marshal_version; end

  sig { returns(T.untyped) }
  def self.needs; end

  sig { returns(T.untyped) }
  def self.operating_system_defaults; end

  sig { returns(T.untyped) }
  def self.path; end

  sig { returns(T.untyped) }
  def self.path_separator; end

  sig { returns(T.untyped) }
  def self.paths; end

  sig { params(env: T.untyped).returns(T.untyped) }
  def self.paths=(env); end

  sig { returns(T.untyped) }
  def self.platform_defaults; end

  sig { returns(T.untyped) }
  def self.platforms; end

  sig { params(platforms: T.untyped).returns(T.untyped) }
  def self.platforms=(platforms); end

  sig { params(hook: T.untyped).returns(T.untyped) }
  def self.post_build(&hook); end

  sig { returns(T.untyped) }
  def self.post_build_hooks; end

  sig { params(hook: T.untyped).returns(T.untyped) }
  def self.post_install(&hook); end

  sig { returns(T.untyped) }
  def self.post_install_hooks; end

  sig { params(hook: T.untyped).returns(T.untyped) }
  def self.post_reset(&hook); end

  sig { returns(T.untyped) }
  def self.post_reset_hooks; end

  sig { params(hook: T.untyped).returns(T.untyped) }
  def self.post_uninstall(&hook); end

  sig { returns(T.untyped) }
  def self.post_uninstall_hooks; end

  sig { params(hook: T.untyped).returns(T.untyped) }
  def self.pre_install(&hook); end

  sig { returns(T.untyped) }
  def self.pre_install_hooks; end

  sig { params(hook: T.untyped).returns(T.untyped) }
  def self.pre_reset(&hook); end

  sig { returns(T.untyped) }
  def self.pre_reset_hooks; end

  sig { params(hook: T.untyped).returns(T.untyped) }
  def self.pre_uninstall(&hook); end

  sig { returns(T.untyped) }
  def self.pre_uninstall_hooks; end

  sig { returns(T.untyped) }
  def self.prefix; end

  sig { params(path: T.untyped).returns(T.untyped) }
  def self.read_binary(path); end

  sig { returns(T.untyped) }
  def self.refresh; end

  sig { params(spec: T.untyped).returns(T.untyped) }
  def self.register_default_spec(spec); end

  sig { params(spec: T.untyped).returns(T.untyped) }
  def self.remove_unresolved_default_spec(spec); end

  sig { returns(T.untyped) }
  def self.ruby; end

  sig { returns(T.untyped) }
  def self.ruby_api_version; end

  sig { returns(T.untyped) }
  def self.ruby_engine; end

  sig { returns(T.untyped) }
  def self.ruby_version; end

  sig { returns(T.untyped) }
  def self.rubygems_version; end

  sig { returns(T.untyped) }
  def self.sources; end

  sig { params(new_sources: T.untyped).returns(T.untyped) }
  def self.sources=(new_sources); end

  sig { returns(T.untyped) }
  def self.spec_cache_dir; end

  sig { returns(T.untyped) }
  def self.suffix_pattern; end

  sig { returns(T.untyped) }
  def self.suffixes; end

  sig { params(msg: T.untyped, width: T.untyped, display: T.untyped).returns(T.untyped) }
  def self.time(msg, width = T.unsafe(nil), display = T.unsafe(nil)); end

  sig { params(path: T.untyped).returns(T.untyped) }
  def self.try_activate(path); end

  sig { returns(T.untyped) }
  def self.ui; end

  sig { params(path: T.untyped).returns(T.untyped) }
  def self.use_gemdeps(path = T.unsafe(nil)); end

  sig { params(home: T.untyped, paths: T.untyped).returns(T.untyped) }
  def self.use_paths(home, *paths); end

  sig { returns(T.untyped) }
  def self.user_dir; end

  sig { returns(T.untyped) }
  def self.user_home; end

  sig { returns(T.untyped) }
  def self.vendor_dir; end

  sig { returns(T::Boolean) }
  def self.win_platform?; end

  sig { params(path: T.untyped, data: T.untyped).returns(T.untyped) }
  def self.write_binary(path, data); end

  class AvailableSet
    include Enumerable
    Elem = type_member(fixed: T.untyped)

    sig { params(o: T.untyped).returns(T.untyped) }
    def <<(o); end

    sig { params(spec: T.untyped, source: T.untyped).returns(T.untyped) }
    def add(spec, source); end

    sig { returns(T.untyped) }
    def all_specs; end

    sig { params(blk: T.untyped).returns(T.untyped) }
    def each(&blk); end

    sig { returns(T.untyped) }
    def each_spec; end

    sig { returns(T::Boolean) }
    def empty?; end

    sig { params(req: T.untyped).returns(T.untyped) }
    def find_all(req); end

    sig { params(dep_list: T.untyped).returns(T.untyped) }
    def inject_into_list(dep_list); end

    sig { returns(T.untyped) }
    def match_platform!; end

    sig { returns(T.untyped) }
    def pick_best!; end

    sig { params(reqs: T.untyped).returns(T.untyped) }
    def prefetch(reqs); end

    sig { returns(T.untyped) }
    def remote; end

    sig { params(remote: T.untyped).returns(T.untyped) }
    def remote=(remote); end

    sig { params(dep: T.untyped).returns(T.untyped) }
    def remove_installed!(dep); end

    sig { returns(T.untyped) }
    def set; end

    sig { returns(T.untyped) }
    def size; end

    sig { returns(T.untyped) }
    def sorted; end

    sig { params(spec: T.untyped).returns(T.untyped) }
    def source_for(spec); end

    sig { params(development: T.untyped).returns(T.untyped) }
    def to_request_set(development = T.unsafe(nil)); end

    class Tuple
      sig { returns(T.untyped) }
      def source; end

      sig { params(_: T.untyped).returns(T.untyped) }
      def source=(_); end

      sig { returns(T.untyped) }
      def spec; end

      sig { params(_: T.untyped).returns(T.untyped) }
      def spec=(_); end

      sig { params(_: T.untyped).returns(T.untyped) }
      def self.[](*_); end

      sig { returns(T.untyped) }
      def self.members; end
    end
  end

  class BasicSpecification
    sig { returns(T::Boolean) }
    def activated?; end

    sig { returns(T.untyped) }
    def base_dir; end

    sig { params(base_dir: T.untyped).returns(T.untyped) }
    def base_dir=(base_dir); end

    sig { params(file: T.untyped).returns(T::Boolean) }
    def contains_requirable_file?(file); end

    sig { returns(T.untyped) }
    def datadir; end

    sig { returns(T::Boolean) }
    def default_gem?; end

    sig { returns(T.untyped) }
    def extension_dir; end

    sig { params(extension_dir: T.untyped).returns(T.untyped) }
    def extension_dir=(extension_dir); end

    sig { returns(T.untyped) }
    def extensions_dir; end

    sig { returns(T.untyped) }
    def full_gem_path; end

    sig { params(full_gem_path: T.untyped).returns(T.untyped) }
    def full_gem_path=(full_gem_path); end

    sig { returns(T.untyped) }
    def full_name; end

    sig { returns(T.untyped) }
    def full_require_paths; end

    sig { returns(T.untyped) }
    def gem_build_complete_path; end

    sig { returns(T.untyped) }
    def gem_dir; end

    sig { returns(T.untyped) }
    def gems_dir; end

    sig { params(ignored: T.untyped).returns(T.untyped) }
    def ignored=(ignored); end

    sig { returns(T.untyped) }
    def internal_init; end

    sig { returns(T.untyped) }
    def lib_dirs_glob; end

    sig { returns(T.untyped) }
    def loaded_from; end

    sig { params(loaded_from: T.untyped).returns(T.untyped) }
    def loaded_from=(loaded_from); end

    sig { params(glob: T.untyped).returns(T.untyped) }
    def matches_for_glob(glob); end

    sig { returns(T.untyped) }
    def name; end

    sig { returns(T.untyped) }
    def platform; end

    sig { returns(T.untyped) }
    def raw_require_paths; end

    sig { returns(T.untyped) }
    def require_paths; end

    sig { returns(T.untyped) }
    def source_paths; end

    sig { returns(T::Boolean) }
    def stubbed?; end

    sig { returns(T.untyped) }
    def this; end

    sig { params(path: T.untyped).returns(T.untyped) }
    def to_fullpath(path); end

    sig { returns(T.untyped) }
    def to_spec; end

    sig { returns(T.untyped) }
    def version; end

    sig { returns(T.untyped) }
    def self.default_specifications_dir; end
  end

  module BundlerVersionFinder
    sig { returns(T.untyped) }
    def self.bundler_version; end

    sig { returns(T.untyped) }
    def self.bundler_version_with_reason; end

    sig { params(spec: T.untyped).returns(T::Boolean) }
    def self.compatible?(spec); end

    sig { params(specs: T.untyped).returns(T.untyped) }
    def self.filter!(specs); end

    sig { returns(T.untyped) }
    def self.missing_version_message; end
  end

  class Command
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    HELP = T.let(nil, T.untyped)

    sig { params(args: T.untyped).returns(T.untyped) }
    def add_extra_args(args); end

    sig { params(opts: T.untyped, handler: T.untyped).returns(T.untyped) }
    def add_option(*opts, &handler); end

    sig { returns(T.untyped) }
    def arguments; end

    sig { params(long: T.untyped, short: T.untyped).returns(T::Boolean) }
    def begins?(long, short); end

    sig { returns(T.untyped) }
    def command; end

    sig { returns(T.untyped) }
    def defaults; end

    sig { params(defaults: T.untyped).returns(T.untyped) }
    def defaults=(defaults); end

    sig { returns(T.untyped) }
    def defaults_str; end

    sig { returns(T.untyped) }
    def description; end

    sig { returns(T.untyped) }
    def execute; end

    sig { returns(T.untyped) }
    def get_all_gem_names; end

    sig { returns(T.untyped) }
    def get_all_gem_names_and_versions; end

    sig { returns(T.untyped) }
    def get_one_gem_name; end

    sig { returns(T.untyped) }
    def get_one_optional_argument; end

    sig { params(args: T.untyped).returns(T.untyped) }
    def handle_options(args); end

    sig { params(args: T.untyped).returns(T::Boolean) }
    def handles?(args); end

    sig { params(command: T.untyped, summary: T.untyped, defaults: T.untyped).returns(Command) }
    def initialize(command, summary = T.unsafe(nil), defaults = T.unsafe(nil)); end

    sig { params(args: T.untyped).returns(T.untyped) }
    def invoke(*args); end

    sig { params(args: T.untyped, build_args: T.untyped).returns(T.untyped) }
    def invoke_with_build_args(args, build_args); end

    sig { params(new_options: T.untyped).returns(T.untyped) }
    def merge_options(new_options); end

    sig { returns(T.untyped) }
    def options; end

    sig { returns(T.untyped) }
    def program_name; end

    sig { params(program_name: T.untyped).returns(T.untyped) }
    def program_name=(program_name); end

    sig { params(name: T.untyped).returns(T.untyped) }
    def remove_option(name); end

    sig { returns(T.untyped) }
    def show_help; end

    sig do
      params(
        gem_name: T.untyped,
        version: T.untyped,
        errors: T.untyped,
        domain: T.untyped,
        required_by: T.untyped
      ).returns(T.untyped)
    end
    def show_lookup_failure(gem_name, version, errors, domain, required_by = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def summary; end

    sig { params(summary: T.untyped).returns(T.untyped) }
    def summary=(summary); end

    sig { returns(T.untyped) }
    def usage; end

    sig { params(block: T.untyped).returns(T.untyped) }
    def when_invoked(&block); end

    sig { params(args: T.untyped, handler: T.untyped).returns(T.untyped) }
    def self.add_common_option(*args, &handler); end

    sig { params(cmd: T.untyped, args: T.untyped).returns(T.untyped) }
    def self.add_specific_extra_args(cmd, args); end

    sig { returns(T.untyped) }
    def self.build_args; end

    sig { params(value: T.untyped).returns(T.untyped) }
    def self.build_args=(value); end

    sig { returns(T.untyped) }
    def self.common_options; end

    sig { returns(T.untyped) }
    def self.extra_args; end

    sig { params(value: T.untyped).returns(T.untyped) }
    def self.extra_args=(value); end

    sig { params(cmd: T.untyped).returns(T.untyped) }
    def self.specific_extra_args(cmd); end

    sig { returns(T.untyped) }
    def self.specific_extra_args_hash; end

    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def use_ui(new_ui, &block); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask(question); end

    sig { params(prompt: T.untyped).returns(T.untyped) }
    def ask_for_password(prompt); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def choose_from_list(question, list); end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def say(statement = T.unsafe(nil)); end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def terminate_interaction(exit_code = T.unsafe(nil)); end

    sig { params(msg: T.untyped).returns(T.untyped) }
    def verbose(msg = T.unsafe(nil)); end
  end

  module Commands
  end

  class ConfigFile
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    DEFAULT_BACKTRACE = T.let(nil, T.untyped)
    DEFAULT_BULK_THRESHOLD = T.let(nil, T.untyped)
    DEFAULT_CERT_EXPIRATION_LENGTH_DAYS = T.let(nil, T.untyped)
    DEFAULT_CONCURRENT_DOWNLOADS = T.let(nil, T.untyped)
    DEFAULT_UPDATE_SOURCES = T.let(nil, T.untyped)
    DEFAULT_VERBOSITY = T.let(nil, T.untyped)
    OPERATING_SYSTEM_DEFAULTS = T.let(nil, T.untyped)
    PLATFORM_DEFAULTS = T.let(nil, T.untyped)
    SYSTEM_CONFIG_PATH = T.let(nil, T.untyped)
    SYSTEM_WIDE_CONFIG_FILE = T.let(nil, T.untyped)

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { params(key: T.untyped).returns(T.untyped) }
    def [](key); end

    sig { params(key: T.untyped, value: T.untyped).returns(T.untyped) }
    def []=(key, value); end

    sig { returns(T.untyped) }
    def api_keys; end

    sig { returns(T.untyped) }
    def args; end

    sig { returns(T.untyped) }
    def backtrace; end

    sig { params(backtrace: T.untyped).returns(T.untyped) }
    def backtrace=(backtrace); end

    sig { returns(T.untyped) }
    def bulk_threshold; end

    sig { params(bulk_threshold: T.untyped).returns(T.untyped) }
    def bulk_threshold=(bulk_threshold); end

    sig { returns(T.untyped) }
    def cert_expiration_length_days; end

    sig { params(cert_expiration_length_days: T.untyped).returns(T.untyped) }
    def cert_expiration_length_days=(cert_expiration_length_days); end

    sig { returns(T.untyped) }
    def check_credentials_permissions; end

    sig { returns(T.untyped) }
    def concurrent_downloads; end

    sig { params(concurrent_downloads: T.untyped).returns(T.untyped) }
    def concurrent_downloads=(concurrent_downloads); end

    sig { returns(T.untyped) }
    def config_file_name; end

    sig { returns(T.untyped) }
    def credentials_path; end

    sig { returns(T.untyped) }
    def disable_default_gem_server; end

    sig { params(disable_default_gem_server: T.untyped).returns(T.untyped) }
    def disable_default_gem_server=(disable_default_gem_server); end

    sig { params(block: T.untyped).returns(T.untyped) }
    def each(&block); end

    sig { params(arg_list: T.untyped).returns(T.untyped) }
    def handle_arguments(arg_list); end

    sig { returns(T.untyped) }
    def home; end

    sig { params(home: T.untyped).returns(T.untyped) }
    def home=(home); end

    sig { params(args: T.untyped).returns(ConfigFile) }
    def initialize(args); end

    sig { returns(T.untyped) }
    def load_api_keys; end

    sig { params(filename: T.untyped).returns(T.untyped) }
    def load_file(filename); end

    sig { returns(T.untyped) }
    def path; end

    sig { params(path: T.untyped).returns(T.untyped) }
    def path=(path); end

    sig { returns(T.untyped) }
    def really_verbose; end

    sig { returns(T.untyped) }
    def rubygems_api_key; end

    sig { params(api_key: T.untyped).returns(T.untyped) }
    def rubygems_api_key=(api_key); end

    sig { params(host: T.untyped, api_key: T.untyped).returns(T.untyped) }
    def set_api_key(host, api_key); end

    sig { returns(T.untyped) }
    def sources; end

    sig { params(sources: T.untyped).returns(T.untyped) }
    def sources=(sources); end

    sig { returns(T.untyped) }
    def ssl_ca_cert; end

    sig { params(ssl_ca_cert: T.untyped).returns(T.untyped) }
    def ssl_ca_cert=(ssl_ca_cert); end

    sig { returns(T.untyped) }
    def ssl_client_cert; end

    sig { returns(T.untyped) }
    def ssl_verify_mode; end

    sig { returns(T.untyped) }
    def to_yaml; end

    sig { returns(T.untyped) }
    def unset_api_key!; end

    sig { returns(T.untyped) }
    def update_sources; end

    sig { params(update_sources: T.untyped).returns(T.untyped) }
    def update_sources=(update_sources); end

    sig { returns(T.untyped) }
    def verbose; end

    sig { params(verbose: T.untyped).returns(T.untyped) }
    def verbose=(verbose); end

    sig { returns(T.untyped) }
    def write; end

    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def use_ui(new_ui, &block); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask(question); end

    sig { params(prompt: T.untyped).returns(T.untyped) }
    def ask_for_password(prompt); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def choose_from_list(question, list); end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def say(statement = T.unsafe(nil)); end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def terminate_interaction(exit_code = T.unsafe(nil)); end
  end

  class ConflictError
    sig { returns(T.untyped) }
    def conflicts; end

    sig { params(target: T.untyped, conflicts: T.untyped).returns(ConflictError) }
    def initialize(target, conflicts); end

    sig { returns(T.untyped) }
    def target; end
  end

  class ConsoleUI
    sig { returns(ConsoleUI) }
    def initialize; end
  end

  module DefaultUserInteraction
    include Gem::Text

    sig { returns(T.untyped) }
    def ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def use_ui(new_ui, &block); end

    sig { returns(T.untyped) }
    def self.ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def self.ui=(new_ui); end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def self.use_ui(new_ui); end

    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end
  end

  class Dependency
    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ===(other); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def =~(other); end

    sig { returns(T.untyped) }
    def all_sources; end

    sig { params(all_sources: T.untyped).returns(T.untyped) }
    def all_sources=(all_sources); end

    sig { params(coder: T.untyped).returns(T.untyped) }
    def encode_with(coder); end

    sig { params(other: T.untyped).returns(T::Boolean) }
    def eql?(other); end

    sig { returns(T.untyped) }
    def groups; end

    sig { params(groups: T.untyped).returns(T.untyped) }
    def groups=(groups); end

    sig { params(name: T.untyped, requirements: T.untyped).returns(Dependency) }
    def initialize(name, *requirements); end

    sig { returns(T::Boolean) }
    def latest_version?; end

    sig { params(obj: T.untyped, version: T.untyped, allow_prerelease: T.untyped).returns(T::Boolean) }
    def match?(obj, version = T.unsafe(nil), allow_prerelease = T.unsafe(nil)); end

    sig { params(spec: T.untyped).returns(T::Boolean) }
    def matches_spec?(spec); end

    sig { params(platform_only: T.untyped).returns(T.untyped) }
    def matching_specs(platform_only = T.unsafe(nil)); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def merge(other); end

    sig { returns(T.untyped) }
    def name; end

    sig { params(name: T.untyped).returns(T.untyped) }
    def name=(name); end

    sig { params(prerelease: T.untyped).returns(T.untyped) }
    def prerelease=(prerelease); end

    sig { returns(T::Boolean) }
    def prerelease?; end

    sig { params(q: T.untyped).returns(T.untyped) }
    def pretty_print(q); end

    sig { returns(T.untyped) }
    def requirement; end

    sig { returns(T.untyped) }
    def requirements_list; end

    sig { returns(T::Boolean) }
    def runtime?; end

    sig { returns(T.untyped) }
    def source; end

    sig { params(source: T.untyped).returns(T.untyped) }
    def source=(source); end

    sig { returns(T::Boolean) }
    def specific?; end

    sig { returns(T.untyped) }
    def to_lock; end

    sig { returns(T.untyped) }
    def to_spec; end

    sig { returns(T.untyped) }
    def to_specs; end

    sig { returns(T.untyped) }
    def to_yaml_properties; end

    sig { returns(T.untyped) }
    def type; end
  end

  class DependencyInstaller
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    extend Gem::Deprecate
    DEFAULT_OPTIONS = T.let(nil, T.untyped)

    sig { params(to_do: T.untyped, dependency_list: T.untyped).returns(T.untyped) }
    def _deprecated_add_found_dependencies(to_do, dependency_list); end

    sig { returns(T.untyped) }
    def _deprecated_gather_dependencies; end

    sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
    def add_found_dependencies(*args, &block); end

    sig { params(dep_or_name: T.untyped, version: T.untyped).returns(T.untyped) }
    def available_set_for(dep_or_name, version); end

    sig { returns(T::Boolean) }
    def consider_local?; end

    sig { returns(T::Boolean) }
    def consider_remote?; end

    sig { returns(T.untyped) }
    def document; end

    sig { returns(T.untyped) }
    def errors; end

    sig { params(dep: T.untyped, best_only: T.untyped).returns(T.untyped) }
    def find_gems_with_sources(dep, best_only = T.unsafe(nil)); end

    sig { params(gem_name: T.untyped, version: T.untyped, prerelease: T.untyped).returns(T.untyped) }
    def find_spec_by_name_and_version(gem_name, version = T.unsafe(nil), prerelease = T.unsafe(nil)); end

    sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
    def gather_dependencies(*args, &block); end

    sig { params(what: T.untyped).returns(T.untyped) }
    def in_background(what); end

    sig { params(options: T.untyped).returns(DependencyInstaller) }
    def initialize(options = T.unsafe(nil)); end

    sig { params(dep_or_name: T.untyped, version: T.untyped).returns(T.untyped) }
    def install(dep_or_name, version = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def install_development_deps; end

    sig { returns(T.untyped) }
    def installed_gems; end

    sig { params(dep_or_name: T.untyped, version: T.untyped).returns(T.untyped) }
    def resolve_dependencies(dep_or_name, version); end

    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def use_ui(new_ui, &block); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask(question); end

    sig { params(prompt: T.untyped).returns(T.untyped) }
    def ask_for_password(prompt); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def choose_from_list(question, list); end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def say(statement = T.unsafe(nil)); end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def terminate_interaction(exit_code = T.unsafe(nil)); end

    sig { params(msg: T.untyped).returns(T.untyped) }
    def verbose(msg = T.unsafe(nil)); end
  end

  class DependencyList
    include Enumerable
    include TSort
    Elem = type_member(fixed: T.untyped)

    sig { params(gemspecs: T.untyped).returns(T.untyped) }
    def add(*gemspecs); end

    sig { returns(T.untyped) }
    def clear; end

    sig { returns(T.untyped) }
    def dependency_order; end

    sig { returns(T.untyped) }
    def development; end

    sig { params(development: T.untyped).returns(T.untyped) }
    def development=(development); end

    sig { params(block: T.untyped).returns(T.untyped) }
    def each(&block); end

    sig { params(full_name: T.untyped).returns(T.untyped) }
    def find_name(full_name); end

    sig { params(development: T.untyped).returns(T.untyped) }
    def initialize(development = T.unsafe(nil)); end

    sig { returns(T::Boolean) }
    def ok?; end

    sig { params(full_name: T.untyped, check_dev: T.untyped).returns(T::Boolean) }
    def ok_to_remove?(full_name, check_dev = T.unsafe(nil)); end

    sig { params(full_name: T.untyped).returns(T.untyped) }
    def remove_by_name(full_name); end

    sig { params(dependencies: T.untyped).returns(T.untyped) }
    def remove_specs_unsatisfied_by(dependencies); end

    sig { returns(T.untyped) }
    def spec_predecessors; end

    sig { returns(T.untyped) }
    def specs; end

    sig { params(block: T.untyped).returns(T.untyped) }
    def tsort_each_node(&block); end

    sig { params(quick: T.untyped).returns(T::Boolean) }
    def why_not_ok?(quick = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def self.from_specs; end
  end

  class DependencyResolutionError
    sig { returns(T.untyped) }
    def conflict; end

    sig { returns(T.untyped) }
    def conflicting_dependencies; end

    sig { params(conflict: T.untyped).returns(DependencyResolutionError) }
    def initialize(conflict); end
  end

  module Deprecate
    sig do
      params(
        name: T.untyped,
        repl: T.untyped,
        year: T.untyped,
        month: T.untyped
      ).returns(T.untyped)
    end
    def self.deprecate(name, repl, year, month); end

    sig { returns(T.untyped) }
    def self.skip; end

    sig { params(v: T.untyped).returns(T.untyped) }
    def self.skip=(v); end

    sig { returns(T.untyped) }
    def self.skip_during; end
  end

  class Exception
    extend Gem::Deprecate

    sig { returns(T.untyped) }
    def _deprecated_source_exception; end

    sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
    def source_exception(*args, &block); end

    sig { params(source_exception: T.untyped).returns(T.untyped) }
    def source_exception=(source_exception); end
  end

  module Ext
    class BuildError
    end

    class Builder
      include Gem::UserInteraction
      include Gem::DefaultUserInteraction
      include Gem::Text
      CHDIR_MONITOR = T.let(nil, T.untyped)
      CHDIR_MUTEX = T.let(nil, T.untyped)

      sig { returns(T.untyped) }
      def build_args; end

      sig { params(build_args: T.untyped).returns(T.untyped) }
      def build_args=(build_args); end

      sig { params(build_dir: T.untyped, output: T.untyped, backtrace: T.untyped).returns(T.untyped) }
      def build_error(build_dir, output, backtrace = T.unsafe(nil)); end

      sig { params(extension: T.untyped, dest_path: T.untyped).returns(T.untyped) }
      def build_extension(extension, dest_path); end

      sig { returns(T.untyped) }
      def build_extensions; end

      sig { params(extension: T.untyped).returns(T.untyped) }
      def builder_for(extension); end

      sig { params(spec: T.untyped, build_args: T.untyped).returns(Builder) }
      def initialize(spec, build_args = T.unsafe(nil)); end

      sig { params(output: T.untyped).returns(T.untyped) }
      def write_gem_make_out(output); end

      sig { returns(T.untyped) }
      def self.class_name; end

      sig { params(dest_path: T.untyped, results: T.untyped).returns(T.untyped) }
      def self.make(dest_path, results); end

      sig { returns(T.untyped) }
      def self.redirector; end

      sig { params(command: T.untyped, results: T.untyped, command_name: T.untyped).returns(T.untyped) }
      def self.run(command, results, command_name = T.unsafe(nil)); end

      sig { params(text: T.untyped).returns(T.untyped) }
      def clean_text(text); end

      sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
      def format_text(text, wrap, indent = T.unsafe(nil)); end

      sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
      def levenshtein_distance(str1, str2); end

      sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
      def min3(a, b, c); end

      sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
      def truncate_text(text, description, max_length = T.unsafe(nil)); end

      sig { returns(T.untyped) }
      def ui; end

      sig { params(new_ui: T.untyped).returns(T.untyped) }
      def ui=(new_ui); end

      sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
      def use_ui(new_ui, &block); end

      sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
      def alert(statement, question = T.unsafe(nil)); end

      sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
      def alert_error(statement, question = T.unsafe(nil)); end

      sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
      def alert_warning(statement, question = T.unsafe(nil)); end

      sig { params(question: T.untyped).returns(T.untyped) }
      def ask(question); end

      sig { params(prompt: T.untyped).returns(T.untyped) }
      def ask_for_password(prompt); end

      sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
      def ask_yes_no(question, default = T.unsafe(nil)); end

      sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
      def choose_from_list(question, list); end

      sig { params(statement: T.untyped).returns(T.untyped) }
      def say(statement = T.unsafe(nil)); end

      sig { params(exit_code: T.untyped).returns(T.untyped) }
      def terminate_interaction(exit_code = T.unsafe(nil)); end

      sig { params(msg: T.untyped).returns(T.untyped) }
      def verbose(msg = T.unsafe(nil)); end
    end

    class CmakeBuilder
      sig do
        params(
          extension: T.untyped,
          dest_path: T.untyped,
          results: T.untyped,
          args: T.untyped,
          lib_dir: T.untyped
        ).returns(T.untyped)
      end
      def self.build(extension, dest_path, results, args = T.unsafe(nil), lib_dir = T.unsafe(nil)); end
    end

    class ConfigureBuilder
      sig do
        params(
          extension: T.untyped,
          dest_path: T.untyped,
          results: T.untyped,
          args: T.untyped,
          lib_dir: T.untyped
        ).returns(T.untyped)
      end
      def self.build(extension, dest_path, results, args = T.unsafe(nil), lib_dir = T.unsafe(nil)); end
    end

    class ExtConfBuilder
      sig do
        params(
          extension: T.untyped,
          dest_path: T.untyped,
          results: T.untyped,
          args: T.untyped,
          lib_dir: T.untyped
        ).returns(T.untyped)
      end
      def self.build(extension, dest_path, results, args = T.unsafe(nil), lib_dir = T.unsafe(nil)); end

      sig { params(path: T.untyped).returns(T.untyped) }
      def self.get_relative_path(path); end
    end

    class RakeBuilder
      sig do
        params(
          extension: T.untyped,
          dest_path: T.untyped,
          results: T.untyped,
          args: T.untyped,
          lib_dir: T.untyped
        ).returns(T.untyped)
      end
      def self.build(extension, dest_path, results, args = T.unsafe(nil), lib_dir = T.unsafe(nil)); end
    end
  end

  class FilePermissionError
    sig { returns(T.untyped) }
    def directory; end

    sig { params(directory: T.untyped).returns(FilePermissionError) }
    def initialize(directory); end
  end

  class FormatException
    sig { returns(T.untyped) }
    def file_path; end

    sig { params(file_path: T.untyped).returns(T.untyped) }
    def file_path=(file_path); end
  end

  class GemNotInHomeException
    sig { returns(T.untyped) }
    def spec; end

    sig { params(spec: T.untyped).returns(T.untyped) }
    def spec=(spec); end
  end

  class ImpossibleDependenciesError
    sig { returns(T.untyped) }
    def build_message; end

    sig { returns(T.untyped) }
    def conflicts; end

    sig { returns(T.untyped) }
    def dependency; end

    sig { params(request: T.untyped, conflicts: T.untyped).returns(ImpossibleDependenciesError) }
    def initialize(request, conflicts); end

    sig { returns(T.untyped) }
    def request; end
  end

  class Installer
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    extend Gem::Deprecate
    ENV_PATHS = T.let(nil, T.untyped)

    sig { params(build_dir: T.untyped, output: T.untyped, backtrace: T.untyped).returns(T.untyped) }
    def _deprecated_extension_build_error(build_dir, output, backtrace = T.unsafe(nil)); end

    sig { params(bin_file_name: T.untyped).returns(T.untyped) }
    def app_script_text(bin_file_name); end

    sig { returns(T.untyped) }
    def bin_dir; end

    sig { returns(T.untyped) }
    def build_extensions; end

    sig { returns(T.untyped) }
    def build_root; end

    sig { params(filename: T.untyped).returns(T.untyped) }
    def check_executable_overwrite(filename); end

    sig { returns(T.untyped) }
    def check_that_user_bin_dir_is_in_path; end

    sig { returns(T.untyped) }
    def default_spec_file; end

    sig { returns(T.untyped) }
    def dir; end

    sig { returns(T.untyped) }
    def ensure_dependencies_met; end

    sig { params(spec: T.untyped, dependency: T.untyped).returns(T.untyped) }
    def ensure_dependency(spec, dependency); end

    sig { returns(T.untyped) }
    def ensure_loadable_spec; end

    sig { returns(T.untyped) }
    def ensure_required_ruby_version_met; end

    sig { returns(T.untyped) }
    def ensure_required_rubygems_version_met; end

    sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
    def extension_build_error(*args, &block); end

    sig { returns(T.untyped) }
    def extract_bin; end

    sig { returns(T.untyped) }
    def extract_files; end

    sig { params(filename: T.untyped).returns(T.untyped) }
    def formatted_program_filename(filename); end

    sig { returns(T.untyped) }
    def gem; end

    sig { returns(T.untyped) }
    def gem_dir; end

    sig { returns(T.untyped) }
    def gem_home; end

    sig { returns(T.untyped) }
    def generate_bin; end

    sig { params(filename: T.untyped, bindir: T.untyped).returns(T.untyped) }
    def generate_bin_script(filename, bindir); end

    sig { params(filename: T.untyped, bindir: T.untyped).returns(T.untyped) }
    def generate_bin_symlink(filename, bindir); end

    sig { params(filename: T.untyped, bindir: T.untyped).returns(T.untyped) }
    def generate_windows_script(filename, bindir); end

    sig { params(package: T.untyped, options: T.untyped).returns(Installer) }
    def initialize(package, options = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def install; end

    sig { params(dependency: T.untyped).returns(T::Boolean) }
    def installation_satisfies_dependency?(dependency); end

    sig { returns(T.untyped) }
    def installed_specs; end

    sig { returns(T.untyped) }
    def options; end

    sig { returns(T.untyped) }
    def pre_install_checks; end

    sig { returns(T.untyped) }
    def process_options; end

    sig { returns(T.untyped) }
    def run_post_build_hooks; end

    sig { returns(T.untyped) }
    def run_post_install_hooks; end

    sig { returns(T.untyped) }
    def run_pre_install_hooks; end

    sig { params(bin_file_name: T.untyped).returns(T.untyped) }
    def shebang(bin_file_name); end

    sig { returns(T.untyped) }
    def spec; end

    sig { returns(T.untyped) }
    def spec_file; end

    sig { params(directory: T.untyped).returns(T.untyped) }
    def unpack(directory); end

    sig { params(unpack: T.untyped).returns(T.untyped) }
    def verify_gem_home(unpack = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def verify_spec; end

    sig { params(bindir: T.untyped, bin_file_name: T.untyped).returns(T.untyped) }
    def windows_stub_script(bindir, bin_file_name); end

    sig { returns(T.untyped) }
    def write_build_info_file; end

    sig { returns(T.untyped) }
    def write_cache_file; end

    sig { returns(T.untyped) }
    def write_default_spec; end

    sig { returns(T.untyped) }
    def write_spec; end

    sig { params(path: T.untyped, options: T.untyped).returns(T.untyped) }
    def self.at(path, options = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def self.exec_format; end

    sig { params(exec_format: T.untyped).returns(T.untyped) }
    def self.exec_format=(exec_format); end

    sig { params(spec: T.untyped, options: T.untyped).returns(T.untyped) }
    def self.for_spec(spec, options = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def self.install_lock; end

    sig { returns(T.untyped) }
    def self.path_warning; end

    sig { params(path_warning: T.untyped).returns(T.untyped) }
    def self.path_warning=(path_warning); end

    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def use_ui(new_ui, &block); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask(question); end

    sig { params(prompt: T.untyped).returns(T.untyped) }
    def ask_for_password(prompt); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def choose_from_list(question, list); end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def say(statement = T.unsafe(nil)); end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def terminate_interaction(exit_code = T.unsafe(nil)); end

    sig { params(msg: T.untyped).returns(T.untyped) }
    def verbose(msg = T.unsafe(nil)); end
  end

  class Licenses
    extend Gem::Text
    EXCEPTION_IDENTIFIERS = T.let(nil, T.untyped)
    LICENSE_IDENTIFIERS = T.let(nil, T.untyped)
    NONSTANDARD = T.let(nil, T.untyped)
    REGEXP = T.let(nil, T.untyped)

    sig { params(license: T.untyped).returns(T::Boolean) }
    def self.match?(license); end

    sig { params(license: T.untyped).returns(T.untyped) }
    def self.suggestions(license); end

    sig { params(text: T.untyped).returns(T.untyped) }
    def self.clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def self.format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def self.levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def self.min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def self.truncate_text(text, description, max_length = T.unsafe(nil)); end
  end

  class List
    sig { params(blk: T.untyped).returns(T.untyped) }
    def each(&blk); end

    sig { params(value: T.untyped, tail: T.untyped).returns(T.untyped) }
    def initialize(value = T.unsafe(nil), tail = T.unsafe(nil)); end

    sig { params(value: T.untyped).returns(T.untyped) }
    def prepend(value); end

    sig { params(q: T.untyped).returns(T.untyped) }
    def pretty_print(q); end

    sig { returns(T.untyped) }
    def tail; end

    sig { params(tail: T.untyped).returns(T.untyped) }
    def tail=(tail); end

    sig { returns(T.untyped) }
    def to_a; end

    sig { returns(T.untyped) }
    def value; end

    sig { params(value: T.untyped).returns(T.untyped) }
    def value=(value); end

    sig { params(list: T.untyped, value: T.untyped).returns(T.untyped) }
    def self.prepend(list, value); end
  end

  class LoadError
    sig { returns(T.untyped) }
    def name; end

    sig { params(name: T.untyped).returns(T.untyped) }
    def name=(name); end

    sig { returns(T.untyped) }
    def requirement; end

    sig { params(requirement: T.untyped).returns(T.untyped) }
    def requirement=(requirement); end
  end

  class MissingSpecError
    sig { params(name: T.untyped, requirement: T.untyped).returns(MissingSpecError) }
    def initialize(name, requirement); end
  end

  class MissingSpecVersionError
    sig { params(name: T.untyped, requirement: T.untyped, specs: T.untyped).returns(MissingSpecVersionError) }
    def initialize(name, requirement, specs); end

    sig { returns(T.untyped) }
    def specs; end
  end

  class NameTuple
    include Comparable

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { params(other: T.untyped).returns(T::Boolean) }
    def eql?(other); end

    sig { returns(T.untyped) }
    def full_name; end

    sig { params(name: T.untyped, version: T.untyped, platform: T.untyped).returns(NameTuple) }
    def initialize(name, version, platform = T.unsafe(nil)); end

    sig { returns(T::Boolean) }
    def match_platform?; end

    sig { returns(T.untyped) }
    def name; end

    sig { returns(T.untyped) }
    def platform; end

    sig { returns(T::Boolean) }
    def prerelease?; end

    sig { returns(T.untyped) }
    def spec_name; end

    sig { returns(T.untyped) }
    def to_a; end

    sig { returns(T.untyped) }
    def version; end

    sig { params(list: T.untyped).returns(T.untyped) }
    def self.from_list(list); end

    sig { returns(T.untyped) }
    def self.null; end

    sig { params(list: T.untyped).returns(T.untyped) }
    def self.to_basic(list); end
  end

  class Package
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text

    sig { params(tar: T.untyped).returns(T.untyped) }
    def add_checksums(tar); end

    sig { params(tar: T.untyped).returns(T.untyped) }
    def add_contents(tar); end

    sig { params(tar: T.untyped).returns(T.untyped) }
    def add_files(tar); end

    sig { params(tar: T.untyped).returns(T.untyped) }
    def add_metadata(tar); end

    sig { params(skip_validation: T.untyped, strict_validation: T.untyped).returns(T.untyped) }
    def build(skip_validation = T.unsafe(nil), strict_validation = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def build_time; end

    sig { params(build_time: T.untyped).returns(T.untyped) }
    def build_time=(build_time); end

    sig { returns(T.untyped) }
    def checksums; end

    sig { returns(T.untyped) }
    def contents; end

    sig { params(path: T.untyped).returns(T.untyped) }
    def copy_to(path); end

    sig { returns(T.untyped) }
    def data_mode; end

    sig { params(data_mode: T.untyped).returns(T.untyped) }
    def data_mode=(data_mode); end

    sig { params(entry: T.untyped).returns(T.untyped) }
    def digest(entry); end

    sig { returns(T.untyped) }
    def dir_mode; end

    sig { params(dir_mode: T.untyped).returns(T.untyped) }
    def dir_mode=(dir_mode); end

    sig { params(destination_dir: T.untyped, pattern: T.untyped).returns(T.untyped) }
    def extract_files(destination_dir, pattern = T.unsafe(nil)); end

    sig { params(io: T.untyped, destination_dir: T.untyped, pattern: T.untyped).returns(T.untyped) }
    def extract_tar_gz(io, destination_dir, pattern = T.unsafe(nil)); end

    sig { params(mode: T.untyped).returns(T.untyped) }
    def file_mode(mode); end

    sig { returns(T.untyped) }
    def files; end

    sig { params(io: T.untyped).returns(T.untyped) }
    def gzip_to(io); end

    sig { params(gem: T.untyped, security_policy: T.untyped).returns(Package) }
    def initialize(gem, security_policy); end

    sig { params(filename: T.untyped, destination_dir: T.untyped).returns(T.untyped) }
    def install_location(filename, destination_dir); end

    sig { params(entry: T.untyped).returns(T.untyped) }
    def load_spec(entry); end

    sig do
      params(
        mkdir: T.untyped,
        mkdir_options: T.untyped,
        destination_dir: T.untyped,
        file_name: T.untyped
      ).returns(T.untyped)
    end
    def mkdir_p_safe(mkdir, mkdir_options, destination_dir, file_name); end

    sig { params(pathname: T.untyped).returns(T.untyped) }
    def normalize_path(pathname); end

    sig { params(io: T.untyped).returns(T.untyped) }
    def open_tar_gz(io); end

    sig { returns(T.untyped) }
    def prog_mode; end

    sig { params(prog_mode: T.untyped).returns(T.untyped) }
    def prog_mode=(prog_mode); end

    sig { params(gem: T.untyped).returns(T.untyped) }
    def read_checksums(gem); end

    sig { returns(T.untyped) }
    def security_policy; end

    sig { params(security_policy: T.untyped).returns(T.untyped) }
    def security_policy=(security_policy); end

    sig { params(signer_options: T.untyped).returns(T.untyped) }
    def setup_signer(signer_options: T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def spec; end

    sig { params(spec: T.untyped).returns(T.untyped) }
    def spec=(spec); end

    sig { returns(T.untyped) }
    def verify; end

    sig { params(digests: T.untyped, checksums: T.untyped).returns(T.untyped) }
    def verify_checksums(digests, checksums); end

    sig { params(entry: T.untyped).returns(T.untyped) }
    def verify_entry(entry); end

    sig { params(gem: T.untyped).returns(T.untyped) }
    def verify_files(gem); end

    sig { params(entry: T.untyped).returns(T.untyped) }
    def verify_gz(entry); end

    sig do
      params(
        spec: T.untyped,
        skip_validation: T.untyped,
        strict_validation: T.untyped,
        file_name: T.untyped
      ).returns(T.untyped)
    end
    def self.build(spec, skip_validation = T.unsafe(nil), strict_validation = T.unsafe(nil), file_name = T.unsafe(nil)); end

    sig { params(gem: T.untyped, security_policy: T.untyped).returns(T.untyped) }
    def self.new(gem, security_policy = T.unsafe(nil)); end

    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def use_ui(new_ui, &block); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask(question); end

    sig { params(prompt: T.untyped).returns(T.untyped) }
    def ask_for_password(prompt); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def choose_from_list(question, list); end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def say(statement = T.unsafe(nil)); end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def terminate_interaction(exit_code = T.unsafe(nil)); end

    sig { params(msg: T.untyped).returns(T.untyped) }
    def verbose(msg = T.unsafe(nil)); end

    class DigestIO
      sig { returns(T.untyped) }
      def digests; end

      sig { params(io: T.untyped, digests: T.untyped).returns(DigestIO) }
      def initialize(io, digests); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def write(data); end

      sig { params(io: T.untyped, digests: T.untyped).returns(T.untyped) }
      def self.wrap(io, digests); end
    end

    class Error
    end

    class FileSource
      sig { params(path: T.untyped).returns(FileSource) }
      def initialize(path); end

      sig { returns(T.untyped) }
      def path; end

      sig { returns(T::Boolean) }
      def present?; end

      sig { returns(T.untyped) }
      def start; end

      sig { params(block: T.untyped).returns(T.untyped) }
      def with_read_io(&block); end

      sig { params(block: T.untyped).returns(T.untyped) }
      def with_write_io(&block); end
    end

    class FormatError
      sig { params(message: T.untyped, source: T.untyped).returns(FormatError) }
      def initialize(message, source = T.unsafe(nil)); end

      sig { returns(T.untyped) }
      def path; end
    end

    class IOSource
      sig { params(io: T.untyped).returns(IOSource) }
      def initialize(io); end

      sig { returns(T.untyped) }
      def io; end

      sig { returns(T.untyped) }
      def path; end

      sig { returns(T::Boolean) }
      def present?; end

      sig { returns(T.untyped) }
      def start; end

      sig { returns(T.untyped) }
      def with_read_io; end

      sig { returns(T.untyped) }
      def with_write_io; end
    end

    class NonSeekableIO
    end

    class Old
      sig { params(destination_dir: T.untyped).returns(T.untyped) }
      def extract_files(destination_dir); end

      sig { params(io: T.untyped).returns(T.untyped) }
      def file_list(io); end

      sig { params(io: T.untyped).returns(T.untyped) }
      def read_until_dashes(io); end

      sig { params(io: T.untyped).returns(T.untyped) }
      def skip_ruby(io); end
    end

    class PathError
      sig { params(destination: T.untyped, destination_dir: T.untyped).returns(PathError) }
      def initialize(destination, destination_dir); end
    end

    class Source
    end

    class TarHeader
      EMPTY_HEADER = T.let(nil, T.untyped)
      FIELDS = T.let(nil, T.untyped)
      PACK_FORMAT = T.let(nil, T.untyped)
      UNPACK_FORMAT = T.let(nil, T.untyped)

      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { returns(T.untyped) }
      def checksum; end

      sig { returns(T.untyped) }
      def devmajor; end

      sig { returns(T.untyped) }
      def devminor; end

      sig { returns(T::Boolean) }
      def empty?; end

      sig { returns(T.untyped) }
      def gid; end

      sig { returns(T.untyped) }
      def gname; end

      sig { params(vals: T.untyped).returns(TarHeader) }
      def initialize(vals); end

      sig { returns(T.untyped) }
      def linkname; end

      sig { returns(T.untyped) }
      def magic; end

      sig { returns(T.untyped) }
      def mode; end

      sig { returns(T.untyped) }
      def mtime; end

      sig { returns(T.untyped) }
      def name; end

      sig { returns(T.untyped) }
      def prefix; end

      sig { returns(T.untyped) }
      def size; end

      sig { returns(T.untyped) }
      def typeflag; end

      sig { returns(T.untyped) }
      def uid; end

      sig { returns(T.untyped) }
      def uname; end

      sig { returns(T.untyped) }
      def update_checksum; end

      sig { returns(T.untyped) }
      def version; end

      sig { params(stream: T.untyped).returns(T.untyped) }
      def self.from(stream); end

      sig { params(str: T.untyped).returns(T.untyped) }
      def self.strict_oct(str); end
    end

    class TarInvalidError
    end

    class TarReader
      include Enumerable
      Elem = type_member(fixed: T.untyped)

      sig { returns(T.untyped) }
      def close; end

      sig { params(blk: T.untyped).returns(T.untyped) }
      def each(&blk); end

      sig { returns(T.untyped) }
      def each_entry; end

      sig { params(io: T.untyped).returns(T.untyped) }
      def initialize(io); end

      sig { returns(T.untyped) }
      def rewind; end

      sig { params(name: T.untyped).returns(T.untyped) }
      def seek(name); end

      sig { params(io: T.untyped).returns(T.untyped) }
      def self.new(io); end

      class Entry
        sig { returns(T.untyped) }
        def bytes_read; end

        sig { returns(T.untyped) }
        def check_closed; end

        sig { returns(T.untyped) }
        def close; end

        sig { returns(T::Boolean) }
        def closed?; end

        sig { returns(T::Boolean) }
        def directory?; end

        sig { returns(T::Boolean) }
        def eof?; end

        sig { returns(T::Boolean) }
        def file?; end

        sig { returns(T.untyped) }
        def full_name; end

        sig { returns(T.untyped) }
        def getc; end

        sig { returns(T.untyped) }
        def header; end

        sig { params(header: T.untyped, io: T.untyped).returns(Entry) }
        def initialize(header, io); end

        sig { returns(T.untyped) }
        def length; end

        sig { returns(T.untyped) }
        def pos; end

        sig { params(len: T.untyped).returns(T.untyped) }
        def read(len = T.unsafe(nil)); end

        sig { params(maxlen: T.untyped, outbuf: T.untyped).returns(T.untyped) }
        def readpartial(maxlen = T.unsafe(nil), outbuf = T.unsafe(nil)); end

        sig { returns(T.untyped) }
        def rewind; end

        sig { returns(T.untyped) }
        def size; end

        sig { returns(T::Boolean) }
        def symlink?; end
      end

      class UnexpectedEOF
      end
    end

    class TarWriter
      sig { params(name: T.untyped, mode: T.untyped).returns(T.untyped) }
      def add_file(name, mode); end

      sig { params(name: T.untyped, mode: T.untyped, digest_algorithms: T.untyped).returns(T.untyped) }
      def add_file_digest(name, mode, digest_algorithms); end

      sig { params(name: T.untyped, mode: T.untyped, signer: T.untyped).returns(T.untyped) }
      def add_file_signed(name, mode, signer); end

      sig { params(name: T.untyped, mode: T.untyped, size: T.untyped).returns(T.untyped) }
      def add_file_simple(name, mode, size); end

      sig { params(name: T.untyped, target: T.untyped, mode: T.untyped).returns(T.untyped) }
      def add_symlink(name, target, mode); end

      sig { returns(T.untyped) }
      def check_closed; end

      sig { returns(T.untyped) }
      def close; end

      sig { returns(T::Boolean) }
      def closed?; end

      sig { returns(T.untyped) }
      def flush; end

      sig { params(io: T.untyped).returns(TarWriter) }
      def initialize(io); end

      sig { params(name: T.untyped, mode: T.untyped).returns(T.untyped) }
      def mkdir(name, mode); end

      sig { params(name: T.untyped).returns(T.untyped) }
      def split_name(name); end

      sig { params(io: T.untyped).returns(T.untyped) }
      def self.new(io); end

      class BoundedStream
        sig { params(io: T.untyped, limit: T.untyped).returns(BoundedStream) }
        def initialize(io, limit); end

        sig { returns(T.untyped) }
        def limit; end

        sig { params(data: T.untyped).returns(T.untyped) }
        def write(data); end

        sig { returns(T.untyped) }
        def written; end
      end

      class FileOverflow
      end

      class RestrictedStream
        sig { params(io: T.untyped).returns(RestrictedStream) }
        def initialize(io); end

        sig { params(data: T.untyped).returns(T.untyped) }
        def write(data); end
      end
    end

    class TooLongFileName
    end
  end

  class PathSupport
    sig { returns(T.untyped) }
    def home; end

    sig { params(env: T.untyped).returns(PathSupport) }
    def initialize(env); end

    sig { returns(T.untyped) }
    def path; end

    sig { returns(T.untyped) }
    def spec_cache_dir; end
  end

  class Platform
    JAVA = T.let(nil, T.untyped)
    MINGW = T.let(nil, T.untyped)
    MSWIN = T.let(nil, T.untyped)
    MSWIN64 = T.let(nil, T.untyped)
    X64_MINGW = T.let(nil, T.untyped)

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ===(other); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def =~(other); end

    sig { returns(T.untyped) }
    def cpu; end

    sig { params(cpu: T.untyped).returns(T.untyped) }
    def cpu=(cpu); end

    sig { params(other: T.untyped).returns(T::Boolean) }
    def eql?(other); end

    sig { params(arch: T.untyped).returns(Platform) }
    def initialize(arch); end

    sig { returns(T.untyped) }
    def os; end

    sig { params(os: T.untyped).returns(T.untyped) }
    def os=(os); end

    sig { returns(T.untyped) }
    def to_a; end

    sig { returns(T.untyped) }
    def version; end

    sig { params(version: T.untyped).returns(T.untyped) }
    def version=(version); end

    sig { params(spec: T.untyped).returns(T::Boolean) }
    def self.installable?(spec); end

    sig { returns(T.untyped) }
    def self.local; end

    sig { params(platform: T.untyped).returns(T.untyped) }
    def self.match(platform); end

    sig { params(arch: T.untyped).returns(T.untyped) }
    def self.new(arch); end
  end

  class PlatformMismatch
    sig { params(platform: T.untyped).returns(T.untyped) }
    def add_platform(platform); end

    sig { params(name: T.untyped, version: T.untyped).returns(PlatformMismatch) }
    def initialize(name, version); end

    sig { returns(T.untyped) }
    def name; end

    sig { returns(T.untyped) }
    def platforms; end

    sig { returns(T.untyped) }
    def version; end

    sig { returns(T.untyped) }
    def wordy; end
  end

  class RemoteFetcher
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    BASE64_URI_TRANSLATE = T.let(nil, T.untyped)

    sig { params(uri: T.untyped, path: T.untyped, update: T.untyped).returns(T.untyped) }
    def cache_update_path(uri, path = T.unsafe(nil), update = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def close_all; end

    sig { params(path: T.untyped).returns(T.untyped) }
    def correct_for_windows_path(path); end

    sig { params(spec: T.untyped, source_uri: T.untyped, install_dir: T.untyped).returns(T.untyped) }
    def download(spec, source_uri, install_dir = T.unsafe(nil)); end

    sig { params(dependency: T.untyped).returns(T.untyped) }
    def download_to_cache(dependency); end

    sig { params(uri: T.untyped, _: T.untyped).returns(T.untyped) }
    def fetch_file(uri, *_); end

    sig do
      params(
        uri: T.untyped,
        last_modified: T.untyped,
        head: T.untyped,
        depth: T.untyped
      ).returns(T.untyped)
    end
    def fetch_http(uri, last_modified = T.unsafe(nil), head = T.unsafe(nil), depth = T.unsafe(nil)); end

    sig do
      params(
        uri: T.untyped,
        last_modified: T.untyped,
        head: T.untyped,
        depth: T.untyped
      ).returns(T.untyped)
    end
    def fetch_https(uri, last_modified = T.unsafe(nil), head = T.unsafe(nil), depth = T.unsafe(nil)); end

    sig { params(uri: T.untyped, mtime: T.untyped, head: T.untyped).returns(T.untyped) }
    def fetch_path(uri, mtime = T.unsafe(nil), head = T.unsafe(nil)); end

    sig { params(uri: T.untyped, mtime: T.untyped, head: T.untyped).returns(T.untyped) }
    def fetch_s3(uri, mtime = T.unsafe(nil), head = T.unsafe(nil)); end

    sig { params(uri: T.untyped).returns(T.untyped) }
    def fetch_size(uri); end

    sig { returns(T.untyped) }
    def headers; end

    sig { params(headers: T.untyped).returns(T.untyped) }
    def headers=(headers); end

    sig { params(uri: T.untyped).returns(T::Boolean) }
    def https?(uri); end

    sig { params(proxy: T.untyped, dns: T.untyped, headers: T.untyped).returns(RemoteFetcher) }
    def initialize(proxy = T.unsafe(nil), dns = T.unsafe(nil), headers = T.unsafe(nil)); end

    sig { params(uri: T.untyped, request_class: T.untyped, last_modified: T.untyped).returns(T.untyped) }
    def request(uri, request_class, last_modified = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def s3_expiration; end

    sig { params(uri: T.untyped, expiration: T.untyped).returns(T.untyped) }
    def sign_s3_url(uri, expiration = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def self.fetcher; end

    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def use_ui(new_ui, &block); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask(question); end

    sig { params(prompt: T.untyped).returns(T.untyped) }
    def ask_for_password(prompt); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def choose_from_list(question, list); end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def say(statement = T.unsafe(nil)); end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def terminate_interaction(exit_code = T.unsafe(nil)); end

    sig { params(msg: T.untyped).returns(T.untyped) }
    def verbose(msg = T.unsafe(nil)); end
  end

  class Request
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text
    extend Gem::UserInteraction
    extend Gem::DefaultUserInteraction
    extend Gem::Text

    sig { returns(T.untyped) }
    def cert_files; end

    sig { params(uri: T.untyped).returns(T.untyped) }
    def connection_for(uri); end

    sig { returns(T.untyped) }
    def fetch; end

    sig do
      params(
        uri: T.untyped,
        request_class: T.untyped,
        last_modified: T.untyped,
        pool: T.untyped
      ).returns(Request)
    end
    def initialize(uri, request_class, last_modified, pool); end

    sig { params(request: T.untyped).returns(T.untyped) }
    def perform_request(request); end

    sig { returns(T.untyped) }
    def proxy_uri; end

    sig { params(connection: T.untyped).returns(T.untyped) }
    def reset(connection); end

    sig { returns(T.untyped) }
    def user_agent; end

    sig { params(connection: T.untyped, cert_files: T.untyped).returns(T.untyped) }
    def self.configure_connection_for_https(connection, cert_files); end

    sig do
      params(
        uri: T.untyped,
        request_class: T.untyped,
        last_modified: T.untyped,
        proxy: T.untyped
      ).returns(T.untyped)
    end
    def self.create_with_proxy(uri, request_class, last_modified, proxy); end

    sig { returns(T.untyped) }
    def self.get_cert_files; end

    sig { params(scheme: T.untyped).returns(T.untyped) }
    def self.get_proxy_from_env(scheme = T.unsafe(nil)); end

    sig { params(proxy: T.untyped).returns(T.untyped) }
    def self.proxy_uri(proxy); end

    sig { params(store_context: T.untyped).returns(T.untyped) }
    def self.verify_certificate(store_context); end

    sig { params(error_number: T.untyped, cert: T.untyped).returns(T.untyped) }
    def self.verify_certificate_message(error_number, cert); end

    sig { params(text: T.untyped).returns(T.untyped) }
    def self.clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def self.format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def self.levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def self.min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def self.truncate_text(text, description, max_length = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def self.ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def self.ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def self.use_ui(new_ui, &block); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def self.alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def self.alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def self.alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def self.ask(question); end

    sig { params(prompt: T.untyped).returns(T.untyped) }
    def self.ask_for_password(prompt); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def self.ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def self.choose_from_list(question, list); end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def self.say(statement = T.unsafe(nil)); end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def self.terminate_interaction(exit_code = T.unsafe(nil)); end

    sig { params(msg: T.untyped).returns(T.untyped) }
    def self.verbose(msg = T.unsafe(nil)); end

    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def use_ui(new_ui, &block); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask(question); end

    sig { params(prompt: T.untyped).returns(T.untyped) }
    def ask_for_password(prompt); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def choose_from_list(question, list); end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def say(statement = T.unsafe(nil)); end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def terminate_interaction(exit_code = T.unsafe(nil)); end

    sig { params(msg: T.untyped).returns(T.untyped) }
    def verbose(msg = T.unsafe(nil)); end

    class ConnectionPools
      sig { returns(T.untyped) }
      def close_all; end

      sig { params(proxy_uri: T.untyped, cert_files: T.untyped).returns(ConnectionPools) }
      def initialize(proxy_uri, cert_files); end

      sig { params(uri: T.untyped).returns(T.untyped) }
      def pool_for(uri); end

      sig { returns(T.untyped) }
      def self.client; end

      sig { params(client: T.untyped).returns(T.untyped) }
      def self.client=(client); end
    end

    class HTTPPool
      sig { returns(T.untyped) }
      def cert_files; end

      sig { params(connection: T.untyped).returns(T.untyped) }
      def checkin(connection); end

      sig { returns(T.untyped) }
      def checkout; end

      sig { returns(T.untyped) }
      def close_all; end

      sig { params(http_args: T.untyped, cert_files: T.untyped, proxy_uri: T.untyped).returns(HTTPPool) }
      def initialize(http_args, cert_files, proxy_uri); end

      sig { returns(T.untyped) }
      def proxy_uri; end
    end

    class HTTPSPool
    end
  end

  class RequestSet
    include TSort

    sig { returns(T.untyped) }
    def always_install; end

    sig { params(always_install: T.untyped).returns(T.untyped) }
    def always_install=(always_install); end

    sig { returns(T.untyped) }
    def dependencies; end

    sig { returns(T.untyped) }
    def development; end

    sig { params(development: T.untyped).returns(T.untyped) }
    def development=(development); end

    sig { returns(T.untyped) }
    def development_shallow; end

    sig { params(development_shallow: T.untyped).returns(T.untyped) }
    def development_shallow=(development_shallow); end

    sig { returns(T.untyped) }
    def errors; end

    sig { params(name: T.untyped, reqs: T.untyped).returns(T.untyped) }
    def gem(name, *reqs); end

    sig { returns(T.untyped) }
    def git_set; end

    sig { returns(T.untyped) }
    def ignore_dependencies; end

    sig { params(ignore_dependencies: T.untyped).returns(T.untyped) }
    def ignore_dependencies=(ignore_dependencies); end

    sig { params(deps: T.untyped).returns(T.untyped) }
    def import(deps); end

    sig { params(deps: T.untyped).returns(RequestSet) }
    def initialize(*deps); end

    sig { params(options: T.untyped, block: T.untyped).returns(T.untyped) }
    def install(options, &block); end

    sig { returns(T.untyped) }
    def install_dir; end

    sig { params(options: T.untyped, block: T.untyped).returns(T.untyped) }
    def install_from_gemdeps(options, &block); end

    sig { params(requests: T.untyped, options: T.untyped).returns(T.untyped) }
    def install_hooks(requests, options); end

    sig { params(dir: T.untyped, force: T.untyped, options: T.untyped).returns(T.untyped) }
    def install_into(dir, force = T.unsafe(nil), options = T.unsafe(nil)); end

    sig { params(path: T.untyped, without_groups: T.untyped, installing: T.untyped).returns(T.untyped) }
    def load_gemdeps(path, without_groups = T.unsafe(nil), installing = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def prerelease; end

    sig { params(prerelease: T.untyped).returns(T.untyped) }
    def prerelease=(prerelease); end

    sig { params(q: T.untyped).returns(T.untyped) }
    def pretty_print(q); end

    sig { returns(T.untyped) }
    def remote; end

    sig { params(remote: T.untyped).returns(T.untyped) }
    def remote=(remote); end

    sig { params(set: T.untyped).returns(T.untyped) }
    def resolve(set = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def resolve_current; end

    sig { returns(T.untyped) }
    def resolver; end

    sig { returns(T.untyped) }
    def sets; end

    sig { returns(T.untyped) }
    def soft_missing; end

    sig { params(soft_missing: T.untyped).returns(T.untyped) }
    def soft_missing=(soft_missing); end

    sig { returns(T.untyped) }
    def sorted_requests; end

    sig { returns(T.untyped) }
    def source_set; end

    sig { returns(T.untyped) }
    def specs; end

    sig { params(dir: T.untyped).returns(T.untyped) }
    def specs_in(dir); end

    sig { params(block: T.untyped).returns(T.untyped) }
    def tsort_each_node(&block); end

    sig { returns(T.untyped) }
    def vendor_set; end

    class GemDependencyAPI
      ENGINE_MAP = T.let(nil, T.untyped)
      PLATFORM_MAP = T.let(nil, T.untyped)
      VERSION_MAP = T.let(nil, T.untyped)
      WINDOWS = T.let(nil, T.untyped)

      sig { returns(T.untyped) }
      def dependencies; end

      sig { params(name: T.untyped, path: T.untyped).returns(T.untyped) }
      def find_gemspec(name, path); end

      sig { params(name: T.untyped, requirements: T.untyped).returns(T.untyped) }
      def gem(name, *requirements); end

      sig { returns(T.untyped) }
      def gem_deps_file; end

      sig { params(options: T.untyped).returns(T.untyped) }
      def gem_git_reference(options); end

      sig { params(options: T.untyped).returns(T.untyped) }
      def gemspec(options = T.unsafe(nil)); end

      sig { params(repository: T.untyped).returns(T.untyped) }
      def git(repository); end

      sig { returns(T.untyped) }
      def git_set; end

      sig { params(name: T.untyped, callback: T.untyped).returns(T.untyped) }
      def git_source(name, &callback); end

      sig { params(groups: T.untyped).returns(T.untyped) }
      def group(*groups); end

      sig { params(set: T.untyped, path: T.untyped).returns(GemDependencyAPI) }
      def initialize(set, path); end

      sig { params(installing: T.untyped).returns(T.untyped) }
      def installing=(installing); end

      sig { returns(T.untyped) }
      def load; end

      sig { params(platforms: T.untyped).returns(T.untyped) }
      def platform(*platforms); end

      sig { params(platforms: T.untyped).returns(T.untyped) }
      def platforms(*platforms); end

      sig { returns(T.untyped) }
      def requires; end

      sig { params(version: T.untyped, options: T.untyped).returns(T.untyped) }
      def ruby(version, options = T.unsafe(nil)); end

      sig { params(url: T.untyped).returns(T.untyped) }
      def source(url); end

      sig { returns(T.untyped) }
      def vendor_set; end

      sig { returns(T.untyped) }
      def without_groups; end

      sig { params(without_groups: T.untyped).returns(T.untyped) }
      def without_groups=(without_groups); end
    end

    class Lockfile
      sig { params(out: T.untyped).returns(T.untyped) }
      def add_DEPENDENCIES(out); end

      sig { params(out: T.untyped, spec_groups: T.untyped).returns(T.untyped) }
      def add_GEM(out, spec_groups); end

      sig { params(out: T.untyped, git_requests: T.untyped).returns(T.untyped) }
      def add_GIT(out, git_requests); end

      sig { params(out: T.untyped, path_requests: T.untyped).returns(T.untyped) }
      def add_PATH(out, path_requests); end

      sig { params(out: T.untyped).returns(T.untyped) }
      def add_PLATFORMS(out); end

      sig { params(request_set: T.untyped, gem_deps_file: T.untyped, dependencies: T.untyped).returns(Lockfile) }
      def initialize(request_set, gem_deps_file, dependencies); end

      sig { returns(T.untyped) }
      def platforms; end

      sig { params(dest: T.untyped, base: T.untyped).returns(T.untyped) }
      def relative_path_from(dest, base); end

      sig { returns(T.untyped) }
      def spec_groups; end

      sig { returns(T.untyped) }
      def write; end

      sig { params(request_set: T.untyped, gem_deps_file: T.untyped, dependencies: T.untyped).returns(T.untyped) }
      def self.build(request_set, gem_deps_file, dependencies = T.unsafe(nil)); end

      sig { params(requests: T.untyped).returns(T.untyped) }
      def self.requests_to_deps(requests); end

      class ParseError
        sig { returns(T.untyped) }
        def column; end

        sig do
          params(
            message: T.untyped,
            column: T.untyped,
            line: T.untyped,
            path: T.untyped
          ).returns(ParseError)
        end
        def initialize(message, column, line, path); end

        sig { returns(T.untyped) }
        def line; end

        sig { returns(T.untyped) }
        def path; end
      end

      class Parser
        sig { params(expected_types: T.untyped, expected_value: T.untyped).returns(T.untyped) }
        def get(expected_types = T.unsafe(nil), expected_value = T.unsafe(nil)); end

        sig do
          params(
            tokenizer: T.untyped,
            set: T.untyped,
            platforms: T.untyped,
            filename: T.untyped
          ).returns(Parser)
        end
        def initialize(tokenizer, set, platforms, filename = T.unsafe(nil)); end

        sig { returns(T.untyped) }
        def parse; end

        sig { returns(T.untyped) }
        def parse_DEPENDENCIES; end

        sig { returns(T.untyped) }
        def parse_GEM; end

        sig { returns(T.untyped) }
        def parse_GIT; end

        sig { returns(T.untyped) }
        def parse_PATH; end

        sig { returns(T.untyped) }
        def parse_PLATFORMS; end

        sig { params(name: T.untyped, op: T.untyped).returns(T.untyped) }
        def parse_dependency(name, op); end
      end

      class Tokenizer
        EOF = T.let(nil, T.untyped)

        sig { returns(T::Boolean) }
        def empty?; end

        sig do
          params(
            input: T.untyped,
            filename: T.untyped,
            line: T.untyped,
            pos: T.untyped
          ).returns(Tokenizer)
        end
        def initialize(input, filename = T.unsafe(nil), line = T.unsafe(nil), pos = T.unsafe(nil)); end

        sig { params(set: T.untyped, platforms: T.untyped).returns(T.untyped) }
        def make_parser(set, platforms); end

        sig { returns(T.untyped) }
        def next_token; end

        sig { returns(T.untyped) }
        def peek; end

        sig { returns(T.untyped) }
        def shift; end

        sig { params(type: T.untyped).returns(T.untyped) }
        def skip(type); end

        sig { returns(T.untyped) }
        def to_a; end

        sig { params(byte_offset: T.untyped).returns(T.untyped) }
        def token_pos(byte_offset); end

        sig { params(token: T.untyped).returns(T.untyped) }
        def unshift(token); end

        sig { params(file: T.untyped).returns(T.untyped) }
        def self.from_file(file); end

        class Token
          sig { returns(T.untyped) }
          def column; end

          sig { params(_: T.untyped).returns(T.untyped) }
          def column=(_); end

          sig { returns(T.untyped) }
          def line; end

          sig { params(_: T.untyped).returns(T.untyped) }
          def line=(_); end

          sig { returns(T.untyped) }
          def type; end

          sig { params(_: T.untyped).returns(T.untyped) }
          def type=(_); end

          sig { returns(T.untyped) }
          def value; end

          sig { params(_: T.untyped).returns(T.untyped) }
          def value=(_); end

          sig { params(_: T.untyped).returns(T.untyped) }
          def self.[](*_); end

          sig { returns(T.untyped) }
          def self.members; end
        end
      end
    end
  end

  class Requirement
    DefaultRequirement = T.let(nil, T.untyped)

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { params(version: T.untyped).returns(T.untyped) }
    def ===(version); end

    sig { params(version: T.untyped).returns(T.untyped) }
    def =~(version); end

    sig { returns(T.untyped) }
    def _tilde_requirements; end

    sig { returns(T.untyped) }
    def as_list; end

    sig { params(new: T.untyped).returns(T.untyped) }
    def concat(new); end

    sig { params(coder: T.untyped).returns(T.untyped) }
    def encode_with(coder); end

    sig { returns(T::Boolean) }
    def exact?; end

    sig { returns(T.untyped) }
    def for_lockfile; end

    sig { params(coder: T.untyped).returns(T.untyped) }
    def init_with(coder); end

    sig { params(requirements: T.untyped).returns(Requirement) }
    def initialize(*requirements); end

    sig { returns(T.untyped) }
    def marshal_dump; end

    sig { params(array: T.untyped).returns(T.untyped) }
    def marshal_load(array); end

    sig { returns(T::Boolean) }
    def none?; end

    sig { returns(T::Boolean) }
    def prerelease?; end

    sig { params(q: T.untyped).returns(T.untyped) }
    def pretty_print(q); end

    sig { returns(T.untyped) }
    def requirements; end

    sig { params(version: T.untyped).returns(T::Boolean) }
    def satisfied_by?(version); end

    sig { returns(T::Boolean) }
    def specific?; end

    sig { returns(T.untyped) }
    def to_yaml_properties; end

    sig { params(tag: T.untyped, vals: T.untyped).returns(T.untyped) }
    def yaml_initialize(tag, vals); end

    sig { params(inputs: T.untyped).returns(T.untyped) }
    def self.create(*inputs); end

    sig { returns(T.untyped) }
    def self.default; end

    sig { params(obj: T.untyped).returns(T.untyped) }
    def self.parse(obj); end

    sig { returns(T.untyped) }
    def self.source_set; end
  end

  class Resolver
    include Gem::Resolver::Molinillo::UI
    include Gem::Resolver::Molinillo::SpecificationProvider
    DEBUG_RESOLVER = T.let(nil, T.untyped)

    sig { params(dep: T.untyped, possible: T.untyped).returns(T.untyped) }
    def activation_request(dep, possible); end

    sig { returns(T.untyped) }
    def development; end

    sig { params(development: T.untyped).returns(T.untyped) }
    def development=(development); end

    sig { returns(T.untyped) }
    def development_shallow; end

    sig { params(development_shallow: T.untyped).returns(T.untyped) }
    def development_shallow=(development_shallow); end

    sig { params(stage: T.untyped, data: T.untyped).returns(T.untyped) }
    def explain(stage, *data); end

    sig { params(stage: T.untyped).returns(T.untyped) }
    def explain_list(stage); end

    sig { params(dependency: T.untyped).returns(T.untyped) }
    def find_possible(dependency); end

    sig { returns(T.untyped) }
    def ignore_dependencies; end

    sig { params(ignore_dependencies: T.untyped).returns(T.untyped) }
    def ignore_dependencies=(ignore_dependencies); end

    sig { params(needed: T.untyped, set: T.untyped).returns(Resolver) }
    def initialize(needed, set = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def missing; end

    sig { params(s: T.untyped, act: T.untyped, reqs: T.untyped).returns(T.untyped) }
    def requests(s, act, reqs = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def resolve; end

    sig { params(specs: T.untyped).returns(T.untyped) }
    def select_local_platforms(specs); end

    sig { returns(T.untyped) }
    def skip_gems; end

    sig { params(skip_gems: T.untyped).returns(T.untyped) }
    def skip_gems=(skip_gems); end

    sig { returns(T.untyped) }
    def soft_missing; end

    sig { params(soft_missing: T.untyped).returns(T.untyped) }
    def soft_missing=(soft_missing); end

    sig { returns(T.untyped) }
    def stats; end

    sig { params(sets: T.untyped).returns(T.untyped) }
    def self.compose_sets(*sets); end

    sig { params(needed: T.untyped).returns(T.untyped) }
    def self.for_current_gems(needed); end

    sig { params(dependency: T.untyped).returns(T::Boolean) }
    def allow_missing?(dependency); end

    sig { params(specification: T.untyped).returns(T.untyped) }
    def dependencies_for(specification); end

    sig { params(dependency: T.untyped).returns(T.untyped) }
    def name_for(dependency); end

    sig { returns(T.untyped) }
    def name_for_explicit_dependency_source; end

    sig { returns(T.untyped) }
    def name_for_locking_dependency_source; end

    sig { params(requirement: T.untyped, activated: T.untyped, spec: T.untyped).returns(T::Boolean) }
    def requirement_satisfied_by?(requirement, activated, spec); end

    sig { params(dependency: T.untyped).returns(T.untyped) }
    def search_for(dependency); end

    sig { params(dependencies: T.untyped, activated: T.untyped, conflicts: T.untyped).returns(T.untyped) }
    def sort_dependencies(dependencies, activated, conflicts); end

    sig { returns(T.untyped) }
    def after_resolution; end

    sig { returns(T.untyped) }
    def before_resolution; end

    sig { params(depth: T.untyped).returns(T.untyped) }
    def debug(depth = T.unsafe(nil)); end

    sig { returns(T::Boolean) }
    def debug?; end

    sig { returns(T.untyped) }
    def indicate_progress; end

    sig { returns(T.untyped) }
    def output; end

    sig { returns(T.untyped) }
    def progress_rate; end

    class APISet
      sig { returns(T.untyped) }
      def dep_uri; end

      sig { params(dep_uri: T.untyped).returns(APISet) }
      def initialize(dep_uri = T.unsafe(nil)); end

      sig { returns(T.untyped) }
      def prefetch_now; end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end

      sig { returns(T.untyped) }
      def source; end

      sig { returns(T.untyped) }
      def uri; end

      sig { params(name: T.untyped).returns(T.untyped) }
      def versions(name); end
    end

    class APISpecification
      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { params(set: T.untyped, api_data: T.untyped).returns(T.untyped) }
      def initialize(set, api_data); end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end
    end

    class ActivationRequest
      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { returns(T::Boolean) }
      def development?; end

      sig { params(path: T.untyped).returns(T.untyped) }
      def download(path); end

      sig { returns(T.untyped) }
      def full_name; end

      sig { returns(T.untyped) }
      def full_spec; end

      sig { params(spec: T.untyped, request: T.untyped, others_possible: T.untyped).returns(ActivationRequest) }
      def initialize(spec, request, others_possible = T.unsafe(nil)); end

      sig { returns(T::Boolean) }
      def installed?; end

      sig { returns(T.untyped) }
      def name; end

      sig { returns(T::Boolean) }
      def others_possible?; end

      sig { returns(T.untyped) }
      def parent; end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end

      sig { returns(T.untyped) }
      def request; end

      sig { returns(T.untyped) }
      def spec; end

      sig { returns(T.untyped) }
      def version; end
    end

    class BestSet
      sig { params(sources: T.untyped).returns(BestSet) }
      def initialize(sources = T.unsafe(nil)); end

      sig { returns(T.untyped) }
      def pick_sets; end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end

      sig { params(error: T.untyped).returns(T.untyped) }
      def replace_failed_api_set(error); end
    end

    class ComposedSet
      sig { params(sets: T.untyped).returns(ComposedSet) }
      def initialize(*sets); end

      sig { params(allow_prerelease: T.untyped).returns(T.untyped) }
      def prerelease=(allow_prerelease); end

      sig { params(remote: T.untyped).returns(T.untyped) }
      def remote=(remote); end

      sig { returns(T.untyped) }
      def sets; end
    end

    class Conflict
      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { returns(T.untyped) }
      def activated; end

      sig { returns(T.untyped) }
      def conflicting_dependencies; end

      sig { returns(T.untyped) }
      def dependency; end

      sig { returns(T.untyped) }
      def explain; end

      sig { returns(T.untyped) }
      def explanation; end

      sig { returns(T.untyped) }
      def failed_dep; end

      sig { params(spec: T.untyped).returns(T::Boolean) }
      def for_spec?(spec); end

      sig { params(dependency: T.untyped, activated: T.untyped, failed_dep: T.untyped).returns(Conflict) }
      def initialize(dependency, activated, failed_dep = T.unsafe(nil)); end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end

      sig { params(current: T.untyped).returns(T.untyped) }
      def request_path(current); end

      sig { returns(T.untyped) }
      def requester; end
    end

    class CurrentSet
    end

    class DependencyRequest
      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { returns(T.untyped) }
      def dependency; end

      sig { returns(T::Boolean) }
      def development?; end

      sig { returns(T::Boolean) }
      def explicit?; end

      sig { returns(T::Boolean) }
      def implicit?; end

      sig { params(dependency: T.untyped, requester: T.untyped).returns(DependencyRequest) }
      def initialize(dependency, requester); end

      sig { params(spec: T.untyped, allow_prerelease: T.untyped).returns(T::Boolean) }
      def match?(spec, allow_prerelease = T.unsafe(nil)); end

      sig { params(spec: T.untyped).returns(T::Boolean) }
      def matches_spec?(spec); end

      sig { returns(T.untyped) }
      def name; end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end

      sig { returns(T.untyped) }
      def request_context; end

      sig { returns(T.untyped) }
      def requester; end

      sig { returns(T.untyped) }
      def requirement; end

      sig { returns(T.untyped) }
      def type; end
    end

    class GitSet
      sig do
        params(
          name: T.untyped,
          repository: T.untyped,
          reference: T.untyped,
          submodules: T.untyped
        ).returns(T.untyped)
      end
      def add_git_gem(name, repository, reference, submodules); end

      sig do
        params(
          name: T.untyped,
          version: T.untyped,
          repository: T.untyped,
          reference: T.untyped,
          submodules: T.untyped
        ).returns(T.untyped)
      end
      def add_git_spec(name, version, repository, reference, submodules); end

      sig { returns(T.untyped) }
      def need_submodules; end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end

      sig { returns(T.untyped) }
      def repositories; end

      sig { returns(T.untyped) }
      def root_dir; end

      sig { params(root_dir: T.untyped).returns(T.untyped) }
      def root_dir=(root_dir); end

      sig { returns(T.untyped) }
      def specs; end
    end

    class GitSpecification
      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { params(dependency: T.untyped).returns(T.untyped) }
      def add_dependency(dependency); end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end
    end

    class IndexSet
      sig { params(source: T.untyped).returns(IndexSet) }
      def initialize(source = T.unsafe(nil)); end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end
    end

    class IndexSpecification
      sig do
        params(
          set: T.untyped,
          name: T.untyped,
          version: T.untyped,
          source: T.untyped,
          platform: T.untyped
        ).returns(IndexSpecification)
      end
      def initialize(set, name, version, source, platform); end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end
    end

    class InstalledSpecification
      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end
    end

    class InstallerSet
      sig { params(dependency: T.untyped).returns(T.untyped) }
      def add_always_install(dependency); end

      sig { params(dep_name: T.untyped, spec: T.untyped, source: T.untyped).returns(T.untyped) }
      def add_local(dep_name, spec, source); end

      sig { returns(T.untyped) }
      def always_install; end

      sig { returns(T::Boolean) }
      def consider_local?; end

      sig { returns(T::Boolean) }
      def consider_remote?; end

      sig { returns(T.untyped) }
      def ignore_dependencies; end

      sig { params(ignore_dependencies: T.untyped).returns(T.untyped) }
      def ignore_dependencies=(ignore_dependencies); end

      sig { returns(T.untyped) }
      def ignore_installed; end

      sig { params(ignore_installed: T.untyped).returns(T.untyped) }
      def ignore_installed=(ignore_installed); end

      sig { params(domain: T.untyped).returns(InstallerSet) }
      def initialize(domain); end

      sig do
        params(
          name: T.untyped,
          ver: T.untyped,
          platform: T.untyped,
          source: T.untyped
        ).returns(T.untyped)
      end
      def load_spec(name, ver, platform, source); end

      sig { params(dep_name: T.untyped).returns(T::Boolean) }
      def local?(dep_name); end

      sig { params(allow_prerelease: T.untyped).returns(T.untyped) }
      def prerelease=(allow_prerelease); end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end

      sig { params(remote: T.untyped).returns(T.untyped) }
      def remote=(remote); end

      sig { returns(T.untyped) }
      def remote_set; end
    end

    class LocalSpecification
      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end
    end

    class LockSet
      sig { params(name: T.untyped, version: T.untyped, platform: T.untyped).returns(T.untyped) }
      def add(name, version, platform); end

      sig { params(sources: T.untyped).returns(LockSet) }
      def initialize(sources); end

      sig do
        params(
          name: T.untyped,
          version: T.untyped,
          platform: T.untyped,
          source: T.untyped
        ).returns(T.untyped)
      end
      def load_spec(name, version, platform, source); end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end

      sig { returns(T.untyped) }
      def specs; end
    end

    class LockSpecification
      sig { params(dependency: T.untyped).returns(T.untyped) }
      def add_dependency(dependency); end

      sig do
        params(
          set: T.untyped,
          name: T.untyped,
          version: T.untyped,
          sources: T.untyped,
          platform: T.untyped
        ).returns(LockSpecification)
      end
      def initialize(set, name, version, sources, platform); end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end

      sig { returns(T.untyped) }
      def sources; end
    end

    module Molinillo
      VERSION = T.let(nil, T.untyped)

      class CircularDependencyError
        sig { returns(T.untyped) }
        def dependencies; end

        sig { params(nodes: T.untyped).returns(CircularDependencyError) }
        def initialize(nodes); end
      end

      module Delegates
        module ResolutionState
          sig { returns(T.untyped) }
          def activated; end

          sig { returns(T.untyped) }
          def conflicts; end

          sig { returns(T.untyped) }
          def depth; end

          sig { returns(T.untyped) }
          def name; end

          sig { returns(T.untyped) }
          def possibilities; end

          sig { returns(T.untyped) }
          def requirement; end

          sig { returns(T.untyped) }
          def requirements; end
        end

        module SpecificationProvider
          sig { params(dependency: T.untyped).returns(T::Boolean) }
          def allow_missing?(dependency); end

          sig { params(specification: T.untyped).returns(T.untyped) }
          def dependencies_for(specification); end

          sig { params(dependency: T.untyped).returns(T.untyped) }
          def name_for(dependency); end

          sig { returns(T.untyped) }
          def name_for_explicit_dependency_source; end

          sig { returns(T.untyped) }
          def name_for_locking_dependency_source; end

          sig { params(requirement: T.untyped, activated: T.untyped, spec: T.untyped).returns(T::Boolean) }
          def requirement_satisfied_by?(requirement, activated, spec); end

          sig { params(dependency: T.untyped).returns(T.untyped) }
          def search_for(dependency); end

          sig { params(dependencies: T.untyped, activated: T.untyped, conflicts: T.untyped).returns(T.untyped) }
          def sort_dependencies(dependencies, activated, conflicts); end
        end
      end

      class DependencyGraph
        include Enumerable
        include TSort
        Elem = type_member(fixed: T.untyped)

        sig { params(other: T.untyped).returns(T.untyped) }
        def ==(other); end

        sig do
          params(
            name: T.untyped,
            payload: T.untyped,
            parent_names: T.untyped,
            requirement: T.untyped
          ).returns(T.untyped)
        end
        def add_child_vertex(name, payload, parent_names, requirement); end

        sig { params(origin: T.untyped, destination: T.untyped, requirement: T.untyped).returns(T.untyped) }
        def add_edge(origin, destination, requirement); end

        sig { params(name: T.untyped, payload: T.untyped, root: T.untyped).returns(T.untyped) }
        def add_vertex(name, payload, root = T.unsafe(nil)); end

        sig { params(edge: T.untyped).returns(T.untyped) }
        def delete_edge(edge); end

        sig { params(name: T.untyped).returns(T.untyped) }
        def detach_vertex_named(name); end

        sig { params(blk: T.untyped).returns(T.untyped) }
        def each(&blk); end

        sig { returns(T.untyped) }
        def log; end

        sig { params(tag: T.untyped).returns(T.untyped) }
        def rewind_to(tag); end

        sig { params(name: T.untyped).returns(T.untyped) }
        def root_vertex_named(name); end

        sig { params(name: T.untyped, payload: T.untyped).returns(T.untyped) }
        def set_payload(name, payload); end

        sig { params(tag: T.untyped).returns(T.untyped) }
        def tag(tag); end

        sig { params(options: T.untyped).returns(T.untyped) }
        def to_dot(options = T.unsafe(nil)); end

        sig { params(vertex: T.untyped, block: T.untyped).returns(T.untyped) }
        def tsort_each_child(vertex, &block); end

        sig { params(name: T.untyped).returns(T.untyped) }
        def vertex_named(name); end

        sig { returns(T.untyped) }
        def vertices; end

        sig { params(vertices: T.untyped).returns(T.untyped) }
        def self.tsort(vertices); end

        class Action
          sig { params(graph: T.untyped).returns(T.untyped) }
          def down(graph); end

          sig { returns(T.untyped) }
          def next; end

          sig { params(_: T.untyped).returns(T.untyped) }
          def next=(_); end

          sig { returns(T.untyped) }
          def previous; end

          sig { params(previous: T.untyped).returns(T.untyped) }
          def previous=(previous); end

          sig { params(graph: T.untyped).returns(T.untyped) }
          def up(graph); end

          sig { returns(T.untyped) }
          def self.action_name; end
        end

        class AddEdgeNoCircular
          sig { returns(T.untyped) }
          def destination; end

          sig { params(origin: T.untyped, destination: T.untyped, requirement: T.untyped).returns(AddEdgeNoCircular) }
          def initialize(origin, destination, requirement); end

          sig { params(graph: T.untyped).returns(T.untyped) }
          def make_edge(graph); end

          sig { returns(T.untyped) }
          def origin; end

          sig { returns(T.untyped) }
          def requirement; end
        end

        class AddVertex
          sig { params(name: T.untyped, payload: T.untyped, root: T.untyped).returns(AddVertex) }
          def initialize(name, payload, root); end

          sig { returns(T.untyped) }
          def name; end

          sig { returns(T.untyped) }
          def payload; end

          sig { returns(T.untyped) }
          def root; end
        end

        class DeleteEdge
          sig { returns(T.untyped) }
          def destination_name; end

          sig { params(origin_name: T.untyped, destination_name: T.untyped, requirement: T.untyped).returns(DeleteEdge) }
          def initialize(origin_name, destination_name, requirement); end

          sig { params(graph: T.untyped).returns(T.untyped) }
          def make_edge(graph); end

          sig { returns(T.untyped) }
          def origin_name; end

          sig { returns(T.untyped) }
          def requirement; end
        end

        class DetachVertexNamed
          sig { params(name: T.untyped).returns(DetachVertexNamed) }
          def initialize(name); end

          sig { returns(T.untyped) }
          def name; end
        end

        class Edge
          sig { returns(T.untyped) }
          def destination; end

          sig { params(_: T.untyped).returns(T.untyped) }
          def destination=(_); end

          sig { returns(T.untyped) }
          def origin; end

          sig { params(_: T.untyped).returns(T.untyped) }
          def origin=(_); end

          sig { returns(T.untyped) }
          def requirement; end

          sig { params(_: T.untyped).returns(T.untyped) }
          def requirement=(_); end

          sig { params(_: T.untyped).returns(T.untyped) }
          def self.[](*_); end

          sig { returns(T.untyped) }
          def self.members; end
        end

        class Log
          extend T::Enumerable
          Elem = type_member(fixed: T.untyped)

          sig do
            params(
              graph: T.untyped,
              origin: T.untyped,
              destination: T.untyped,
              requirement: T.untyped
            ).returns(T.untyped)
          end
          def add_edge_no_circular(graph, origin, destination, requirement); end

          sig do
            params(
              graph: T.untyped,
              name: T.untyped,
              payload: T.untyped,
              root: T.untyped
            ).returns(T.untyped)
          end
          def add_vertex(graph, name, payload, root); end

          sig do
            params(
              graph: T.untyped,
              origin_name: T.untyped,
              destination_name: T.untyped,
              requirement: T.untyped
            ).returns(T.untyped)
          end
          def delete_edge(graph, origin_name, destination_name, requirement); end

          sig { params(graph: T.untyped, name: T.untyped).returns(T.untyped) }
          def detach_vertex_named(graph, name); end

          sig { params(blk: T.untyped).returns(T.untyped) }
          def each(&blk); end

          sig { params(graph: T.untyped).returns(T.untyped) }
          def pop!(graph); end

          sig { returns(T.untyped) }
          def reverse_each; end

          sig { params(graph: T.untyped, tag: T.untyped).returns(T.untyped) }
          def rewind_to(graph, tag); end

          sig { params(graph: T.untyped, name: T.untyped, payload: T.untyped).returns(T.untyped) }
          def set_payload(graph, name, payload); end

          sig { params(graph: T.untyped, tag: T.untyped).returns(T.untyped) }
          def tag(graph, tag); end
        end

        class SetPayload
          sig { params(name: T.untyped, payload: T.untyped).returns(SetPayload) }
          def initialize(name, payload); end

          sig { returns(T.untyped) }
          def name; end

          sig { returns(T.untyped) }
          def payload; end
        end

        class Tag
          sig { params(_graph: T.untyped).returns(T.untyped) }
          def down(_graph); end

          sig { params(tag: T.untyped).returns(Tag) }
          def initialize(tag); end

          sig { returns(T.untyped) }
          def tag; end

          sig { params(_graph: T.untyped).returns(T.untyped) }
          def up(_graph); end
        end

        class Vertex
          sig { params(other: T.untyped).returns(T.untyped) }
          def ==(other); end

          sig { params(other: T.untyped).returns(T::Boolean) }
          def ancestor?(other); end

          sig { params(other: T.untyped).returns(T::Boolean) }
          def descendent?(other); end

          sig { params(other: T.untyped).returns(T::Boolean) }
          def eql?(other); end

          sig { returns(T.untyped) }
          def explicit_requirements; end

          sig { returns(T.untyped) }
          def incoming_edges; end

          sig { params(incoming_edges: T.untyped).returns(T.untyped) }
          def incoming_edges=(incoming_edges); end

          sig { params(name: T.untyped, payload: T.untyped).returns(Vertex) }
          def initialize(name, payload); end

          sig { params(other: T.untyped).returns(T::Boolean) }
          def is_reachable_from?(other); end

          sig { returns(T.untyped) }
          def name; end

          sig { params(name: T.untyped).returns(T.untyped) }
          def name=(name); end

          sig { returns(T.untyped) }
          def outgoing_edges; end

          sig { params(outgoing_edges: T.untyped).returns(T.untyped) }
          def outgoing_edges=(outgoing_edges); end

          sig { params(other: T.untyped).returns(T::Boolean) }
          def path_to?(other); end

          sig { returns(T.untyped) }
          def payload; end

          sig { params(payload: T.untyped).returns(T.untyped) }
          def payload=(payload); end

          sig { returns(T.untyped) }
          def predecessors; end

          sig { returns(T.untyped) }
          def recursive_predecessors; end

          sig { returns(T.untyped) }
          def recursive_successors; end

          sig { returns(T.untyped) }
          def requirements; end

          sig { returns(T.untyped) }
          def root; end

          sig { params(root: T.untyped).returns(T.untyped) }
          def root=(root); end

          sig { returns(T::Boolean) }
          def root?; end

          sig { params(other: T.untyped).returns(T::Boolean) }
          def shallow_eql?(other); end

          sig { returns(T.untyped) }
          def successors; end
        end
      end

      class DependencyState
        sig { returns(T.untyped) }
        def pop_possibility_state; end
      end

      class NoSuchDependencyError
        sig { returns(T.untyped) }
        def dependency; end

        sig { params(dependency: T.untyped).returns(T.untyped) }
        def dependency=(dependency); end

        sig { params(dependency: T.untyped, required_by: T.untyped).returns(NoSuchDependencyError) }
        def initialize(dependency, required_by = T.unsafe(nil)); end

        sig { returns(T.untyped) }
        def required_by; end

        sig { params(required_by: T.untyped).returns(T.untyped) }
        def required_by=(required_by); end
      end

      class PossibilityState
      end

      class ResolutionState
        sig { returns(T.untyped) }
        def activated; end

        sig { params(_: T.untyped).returns(T.untyped) }
        def activated=(_); end

        sig { returns(T.untyped) }
        def conflicts; end

        sig { params(_: T.untyped).returns(T.untyped) }
        def conflicts=(_); end

        sig { returns(T.untyped) }
        def depth; end

        sig { params(_: T.untyped).returns(T.untyped) }
        def depth=(_); end

        sig { returns(T.untyped) }
        def name; end

        sig { params(_: T.untyped).returns(T.untyped) }
        def name=(_); end

        sig { returns(T.untyped) }
        def possibilities; end

        sig { params(_: T.untyped).returns(T.untyped) }
        def possibilities=(_); end

        sig { returns(T.untyped) }
        def requirement; end

        sig { params(_: T.untyped).returns(T.untyped) }
        def requirement=(_); end

        sig { returns(T.untyped) }
        def requirements; end

        sig { params(_: T.untyped).returns(T.untyped) }
        def requirements=(_); end

        sig { params(_: T.untyped).returns(T.untyped) }
        def self.[](*_); end

        sig { returns(T.untyped) }
        def self.empty; end

        sig { returns(T.untyped) }
        def self.members; end
      end

      class Resolver
        sig { params(specification_provider: T.untyped, resolver_ui: T.untyped).returns(Resolver) }
        def initialize(specification_provider, resolver_ui); end

        sig { params(requested: T.untyped, base: T.untyped).returns(T.untyped) }
        def resolve(requested, base = T.unsafe(nil)); end

        sig { returns(T.untyped) }
        def resolver_ui; end

        sig { returns(T.untyped) }
        def specification_provider; end

        class Resolution
          include Gem::Resolver::Molinillo::Delegates::ResolutionState
          include Gem::Resolver::Molinillo::Delegates::SpecificationProvider

          sig { returns(T.untyped) }
          def base; end

          sig do
            params(
              specification_provider: T.untyped,
              resolver_ui: T.untyped,
              requested: T.untyped,
              base: T.untyped
            ).returns(Resolution)
          end
          def initialize(specification_provider, resolver_ui, requested, base); end

          sig { params(iteration_rate: T.untyped).returns(T.untyped) }
          def iteration_rate=(iteration_rate); end

          sig { returns(T.untyped) }
          def original_requested; end

          sig { returns(T.untyped) }
          def resolve; end

          sig { returns(T.untyped) }
          def resolver_ui; end

          sig { returns(T.untyped) }
          def specification_provider; end

          sig { params(started_at: T.untyped).returns(T.untyped) }
          def started_at=(started_at); end

          sig { params(states: T.untyped).returns(T.untyped) }
          def states=(states); end

          sig { params(dependency: T.untyped).returns(T::Boolean) }
          def allow_missing?(dependency); end

          sig { params(specification: T.untyped).returns(T.untyped) }
          def dependencies_for(specification); end

          sig { params(dependency: T.untyped).returns(T.untyped) }
          def name_for(dependency); end

          sig { returns(T.untyped) }
          def name_for_explicit_dependency_source; end

          sig { returns(T.untyped) }
          def name_for_locking_dependency_source; end

          sig { params(requirement: T.untyped, activated: T.untyped, spec: T.untyped).returns(T::Boolean) }
          def requirement_satisfied_by?(requirement, activated, spec); end

          sig { params(dependency: T.untyped).returns(T.untyped) }
          def search_for(dependency); end

          sig { params(dependencies: T.untyped, activated: T.untyped, conflicts: T.untyped).returns(T.untyped) }
          def sort_dependencies(dependencies, activated, conflicts); end

          sig { returns(T.untyped) }
          def activated; end

          sig { returns(T.untyped) }
          def conflicts; end

          sig { returns(T.untyped) }
          def depth; end

          sig { returns(T.untyped) }
          def name; end

          sig { returns(T.untyped) }
          def possibilities; end

          sig { returns(T.untyped) }
          def requirement; end

          sig { returns(T.untyped) }
          def requirements; end

          class Conflict
            sig { returns(T.untyped) }
            def activated_by_name; end

            sig { params(_: T.untyped).returns(T.untyped) }
            def activated_by_name=(_); end

            sig { returns(T.untyped) }
            def existing; end

            sig { params(_: T.untyped).returns(T.untyped) }
            def existing=(_); end

            sig { returns(T.untyped) }
            def locked_requirement; end

            sig { params(_: T.untyped).returns(T.untyped) }
            def locked_requirement=(_); end

            sig { returns(T.untyped) }
            def possibility; end

            sig { params(_: T.untyped).returns(T.untyped) }
            def possibility=(_); end

            sig { returns(T.untyped) }
            def requirement; end

            sig { params(_: T.untyped).returns(T.untyped) }
            def requirement=(_); end

            sig { returns(T.untyped) }
            def requirement_trees; end

            sig { params(_: T.untyped).returns(T.untyped) }
            def requirement_trees=(_); end

            sig { returns(T.untyped) }
            def requirements; end

            sig { params(_: T.untyped).returns(T.untyped) }
            def requirements=(_); end

            sig { params(_: T.untyped).returns(T.untyped) }
            def self.[](*_); end

            sig { returns(T.untyped) }
            def self.members; end
          end
        end
      end

      class ResolverError
      end

      module SpecificationProvider
        sig { params(dependency: T.untyped).returns(T::Boolean) }
        def allow_missing?(dependency); end

        sig { params(specification: T.untyped).returns(T.untyped) }
        def dependencies_for(specification); end

        sig { params(dependency: T.untyped).returns(T.untyped) }
        def name_for(dependency); end

        sig { returns(T.untyped) }
        def name_for_explicit_dependency_source; end

        sig { returns(T.untyped) }
        def name_for_locking_dependency_source; end

        sig { params(requirement: T.untyped, activated: T.untyped, spec: T.untyped).returns(T::Boolean) }
        def requirement_satisfied_by?(requirement, activated, spec); end

        sig { params(dependency: T.untyped).returns(T.untyped) }
        def search_for(dependency); end

        sig { params(dependencies: T.untyped, activated: T.untyped, conflicts: T.untyped).returns(T.untyped) }
        def sort_dependencies(dependencies, activated, conflicts); end
      end

      module UI
        sig { returns(T.untyped) }
        def after_resolution; end

        sig { returns(T.untyped) }
        def before_resolution; end

        sig { params(depth: T.untyped).returns(T.untyped) }
        def debug(depth = T.unsafe(nil)); end

        sig { returns(T::Boolean) }
        def debug?; end

        sig { returns(T.untyped) }
        def indicate_progress; end

        sig { returns(T.untyped) }
        def output; end

        sig { returns(T.untyped) }
        def progress_rate; end
      end

      class VersionConflict
        sig { returns(T.untyped) }
        def conflicts; end

        sig { params(conflicts: T.untyped).returns(VersionConflict) }
        def initialize(conflicts); end
      end
    end

    class RequirementList
      include Enumerable
      Elem = type_member(fixed: T.untyped)

      sig { params(req: T.untyped).returns(T.untyped) }
      def add(req); end

      sig { params(blk: T.untyped).returns(T.untyped) }
      def each(&blk); end

      sig { returns(T::Boolean) }
      def empty?; end

      sig { returns(T.untyped) }
      def next5; end

      sig { returns(T.untyped) }
      def remove; end

      sig { returns(T.untyped) }
      def size; end
    end

    class Set
      sig { returns(T.untyped) }
      def errors; end

      sig { params(errors: T.untyped).returns(T.untyped) }
      def errors=(errors); end

      sig { params(req: T.untyped).returns(T.untyped) }
      def find_all(req); end

      sig { params(reqs: T.untyped).returns(T.untyped) }
      def prefetch(reqs); end

      sig { returns(T.untyped) }
      def prerelease; end

      sig { params(prerelease: T.untyped).returns(T.untyped) }
      def prerelease=(prerelease); end

      sig { returns(T.untyped) }
      def remote; end

      sig { params(remote: T.untyped).returns(T.untyped) }
      def remote=(remote); end

      sig { returns(T::Boolean) }
      def remote?; end
    end

    class SourceSet
      sig { params(name: T.untyped, source: T.untyped).returns(T.untyped) }
      def add_source_gem(name, source); end
    end

    class SpecSpecification
      sig { params(set: T.untyped, spec: T.untyped, source: T.untyped).returns(SpecSpecification) }
      def initialize(set, spec, source = T.unsafe(nil)); end
    end

    class Specification
      sig { returns(T.untyped) }
      def dependencies; end

      sig { params(options: T.untyped).returns(T.untyped) }
      def download(options); end

      sig { returns(T.untyped) }
      def fetch_development_dependencies; end

      sig { returns(T.untyped) }
      def full_name; end

      sig { params(options: T.untyped).returns(T.untyped) }
      def install(options = T.unsafe(nil)); end

      sig { returns(T::Boolean) }
      def installable_platform?; end

      sig { returns(T::Boolean) }
      def local?; end

      sig { returns(T.untyped) }
      def name; end

      sig { returns(T.untyped) }
      def platform; end

      sig { returns(T.untyped) }
      def set; end

      sig { returns(T.untyped) }
      def source; end

      sig { returns(T.untyped) }
      def spec; end

      sig { returns(T.untyped) }
      def version; end
    end

    class Stats
      PATTERN = T.let(nil, T.untyped)

      sig { returns(T.untyped) }
      def backtracking!; end

      sig { returns(T.untyped) }
      def display; end

      sig { returns(T.untyped) }
      def iteration!; end

      sig { params(stack: T.untyped).returns(T.untyped) }
      def record_depth(stack); end

      sig { params(reqs: T.untyped).returns(T.untyped) }
      def record_requirements(reqs); end

      sig { returns(T.untyped) }
      def requirement!; end
    end

    class VendorSet
      sig { params(name: T.untyped, directory: T.untyped).returns(T.untyped) }
      def add_vendor_gem(name, directory); end

      sig do
        params(
          name: T.untyped,
          version: T.untyped,
          platform: T.untyped,
          source: T.untyped
        ).returns(T.untyped)
      end
      def load_spec(name, version, platform, source); end

      sig { params(q: T.untyped).returns(T.untyped) }
      def pretty_print(q); end

      sig { returns(T.untyped) }
      def specs; end
    end

    class VendorSpecification
      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end
    end
  end

  class RuntimeRequirementNotMetError
    sig { returns(T.untyped) }
    def suggestion; end

    sig { params(suggestion: T.untyped).returns(T.untyped) }
    def suggestion=(suggestion); end
  end

  module Security
    AlmostNoSecurity = T.let(nil, T.untyped)
    DIGEST_NAME = T.let(nil, T.untyped)
    EXTENSIONS = T.let(nil, T.untyped)
    HighSecurity = T.let(nil, T.untyped)
    KEY_CIPHER = T.let(nil, T.untyped)
    KEY_LENGTH = T.let(nil, T.untyped)
    LowSecurity = T.let(nil, T.untyped)
    MediumSecurity = T.let(nil, T.untyped)
    NoSecurity = T.let(nil, T.untyped)
    ONE_DAY = T.let(nil, T.untyped)
    ONE_YEAR = T.let(nil, T.untyped)
    Policies = T.let(nil, T.untyped)
    SigningPolicy = T.let(nil, T.untyped)

    sig { params(certificate: T.untyped, x509_entry: T.untyped).returns(T.untyped) }
    def self.alt_name_or_x509_entry(certificate, x509_entry); end

    sig do
      params(
        subject: T.untyped,
        key: T.untyped,
        age: T.untyped,
        extensions: T.untyped,
        serial: T.untyped
      ).returns(T.untyped)
    end
    def self.create_cert(subject, key, age = T.unsafe(nil), extensions = T.unsafe(nil), serial = T.unsafe(nil)); end

    sig do
      params(
        email: T.untyped,
        key: T.untyped,
        age: T.untyped,
        extensions: T.untyped
      ).returns(T.untyped)
    end
    def self.create_cert_email(email, key, age = T.unsafe(nil), extensions = T.unsafe(nil)); end

    sig do
      params(
        subject: T.untyped,
        key: T.untyped,
        age: T.untyped,
        extensions: T.untyped,
        serial: T.untyped
      ).returns(T.untyped)
    end
    def self.create_cert_self_signed(subject, key, age = T.unsafe(nil), extensions = T.unsafe(nil), serial = T.unsafe(nil)); end

    sig { params(length: T.untyped, algorithm: T.untyped).returns(T.untyped) }
    def self.create_key(length = T.unsafe(nil), algorithm = T.unsafe(nil)); end

    sig { params(email_address: T.untyped).returns(T.untyped) }
    def self.email_to_name(email_address); end

    sig do
      params(
        expired_certificate: T.untyped,
        private_key: T.untyped,
        age: T.untyped,
        extensions: T.untyped
      ).returns(T.untyped)
    end
    def self.re_sign(expired_certificate, private_key, age = T.unsafe(nil), extensions = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def self.reset; end

    sig do
      params(
        certificate: T.untyped,
        signing_key: T.untyped,
        signing_cert: T.untyped,
        age: T.untyped,
        extensions: T.untyped,
        serial: T.untyped
      ).returns(T.untyped)
    end
    def self.sign(certificate, signing_key, signing_cert, age = T.unsafe(nil), extensions = T.unsafe(nil), serial = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def self.trust_dir; end

    sig { params(block: T.untyped).returns(T.untyped) }
    def self.trusted_certificates(&block); end

    sig do
      params(
        pemmable: T.untyped,
        path: T.untyped,
        permissions: T.untyped,
        passphrase: T.untyped,
        cipher: T.untyped
      ).returns(T.untyped)
    end
    def self.write(pemmable, path, permissions = T.unsafe(nil), passphrase = T.unsafe(nil), cipher = T.unsafe(nil)); end

    class DIGEST_ALGORITHM
      sig { params(data: T.untyped).returns(DIGEST_ALGORITHM) }
      def initialize(data = T.unsafe(nil)); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def self.digest(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def self.hexdigest(data); end
    end

    class Exception
    end

    class KEY_ALGORITHM
      NO_PADDING = T.let(nil, T.untyped)
      PKCS1_OAEP_PADDING = T.let(nil, T.untyped)
      PKCS1_PADDING = T.let(nil, T.untyped)
      SSLV23_PADDING = T.let(nil, T.untyped)

      sig { returns(T.untyped) }
      def d; end

      sig { params(d: T.untyped).returns(T.untyped) }
      def d=(d); end

      sig { returns(T.untyped) }
      def dmp1; end

      sig { params(dmp1: T.untyped).returns(T.untyped) }
      def dmp1=(dmp1); end

      sig { returns(T.untyped) }
      def dmq1; end

      sig { params(dmq1: T.untyped).returns(T.untyped) }
      def dmq1=(dmq1); end

      sig { returns(T.untyped) }
      def e; end

      sig { params(e: T.untyped).returns(T.untyped) }
      def e=(e); end

      sig { params(_: T.untyped).returns(T.untyped) }
      def export(*_); end

      sig { params(_: T.untyped).returns(KEY_ALGORITHM) }
      def initialize(*_); end

      sig { returns(T.untyped) }
      def iqmp; end

      sig { params(iqmp: T.untyped).returns(T.untyped) }
      def iqmp=(iqmp); end

      sig { returns(T.untyped) }
      def n; end

      sig { params(n: T.untyped).returns(T.untyped) }
      def n=(n); end

      sig { returns(T.untyped) }
      def p; end

      sig { params(p: T.untyped).returns(T.untyped) }
      def p=(p); end

      sig { returns(T.untyped) }
      def params; end

      sig { returns(T::Boolean) }
      def private?; end

      sig { params(_: T.untyped).returns(T.untyped) }
      def private_decrypt(*_); end

      sig { params(_: T.untyped).returns(T.untyped) }
      def private_encrypt(*_); end

      sig { returns(T::Boolean) }
      def public?; end

      sig { params(_: T.untyped).returns(T.untyped) }
      def public_decrypt(*_); end

      sig { params(_: T.untyped).returns(T.untyped) }
      def public_encrypt(*_); end

      sig { returns(T.untyped) }
      def public_key; end

      sig { returns(T.untyped) }
      def q; end

      sig { params(q: T.untyped).returns(T.untyped) }
      def q=(q); end

      sig { params(_: T.untyped, _1: T.untyped, _2: T.untyped).returns(T.untyped) }
      def set_crt_params(_, _1, _2); end

      sig { params(_: T.untyped, _1: T.untyped).returns(T.untyped) }
      def set_factors(_, _1); end

      sig { params(_: T.untyped, _1: T.untyped, _2: T.untyped).returns(T.untyped) }
      def set_key(_, _1, _2); end

      sig { params(_: T.untyped).returns(T.untyped) }
      def sign_pss(*_); end

      sig { returns(T.untyped) }
      def to_der; end

      sig { params(_: T.untyped).returns(T.untyped) }
      def to_pem(*_); end

      sig { params(_: T.untyped).returns(T.untyped) }
      def to_s(*_); end

      sig { returns(T.untyped) }
      def to_text; end

      sig { params(_: T.untyped).returns(T.untyped) }
      def verify_pss(*_); end

      sig { params(_: T.untyped).returns(T.untyped) }
      def self.generate(*_); end
    end

    class Policy
      include Gem::UserInteraction
      include Gem::DefaultUserInteraction
      include Gem::Text

      sig { params(signer: T.untyped, issuer: T.untyped, time: T.untyped).returns(T.untyped) }
      def check_cert(signer, issuer, time); end

      sig { params(chain: T.untyped, time: T.untyped).returns(T.untyped) }
      def check_chain(chain, time); end

      sig do
        params(
          public_key: T.untyped,
          digest: T.untyped,
          signature: T.untyped,
          data: T.untyped
        ).returns(T.untyped)
      end
      def check_data(public_key, digest, signature, data); end

      sig { params(signer: T.untyped, key: T.untyped).returns(T.untyped) }
      def check_key(signer, key); end

      sig { params(chain: T.untyped, time: T.untyped).returns(T.untyped) }
      def check_root(chain, time); end

      sig { params(chain: T.untyped, digester: T.untyped, trust_dir: T.untyped).returns(T.untyped) }
      def check_trust(chain, digester, trust_dir); end

      sig { params(name: T.untyped, policy: T.untyped, opt: T.untyped).returns(Policy) }
      def initialize(name, policy = T.unsafe(nil), opt = T.unsafe(nil)); end

      sig { returns(T.untyped) }
      def name; end

      sig { returns(T.untyped) }
      def only_signed; end

      sig { params(only_signed: T.untyped).returns(T.untyped) }
      def only_signed=(only_signed); end

      sig { returns(T.untyped) }
      def only_trusted; end

      sig { params(only_trusted: T.untyped).returns(T.untyped) }
      def only_trusted=(only_trusted); end

      sig { params(certificate: T.untyped).returns(T.untyped) }
      def subject(certificate); end

      sig do
        params(
          chain: T.untyped,
          key: T.untyped,
          digests: T.untyped,
          signatures: T.untyped,
          full_name: T.untyped
        ).returns(T.untyped)
      end
      def verify(chain, key = T.unsafe(nil), digests = T.unsafe(nil), signatures = T.unsafe(nil), full_name = T.unsafe(nil)); end

      sig { returns(T.untyped) }
      def verify_chain; end

      sig { params(verify_chain: T.untyped).returns(T.untyped) }
      def verify_chain=(verify_chain); end

      sig { returns(T.untyped) }
      def verify_data; end

      sig { params(verify_data: T.untyped).returns(T.untyped) }
      def verify_data=(verify_data); end

      sig { returns(T.untyped) }
      def verify_root; end

      sig { params(verify_root: T.untyped).returns(T.untyped) }
      def verify_root=(verify_root); end

      sig { params(spec: T.untyped, digests: T.untyped, signatures: T.untyped).returns(T.untyped) }
      def verify_signatures(spec, digests, signatures); end

      sig { returns(T.untyped) }
      def verify_signer; end

      sig { params(verify_signer: T.untyped).returns(T.untyped) }
      def verify_signer=(verify_signer); end

      sig { params(text: T.untyped).returns(T.untyped) }
      def clean_text(text); end

      sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
      def format_text(text, wrap, indent = T.unsafe(nil)); end

      sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
      def levenshtein_distance(str1, str2); end

      sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
      def min3(a, b, c); end

      sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
      def truncate_text(text, description, max_length = T.unsafe(nil)); end

      sig { returns(T.untyped) }
      def ui; end

      sig { params(new_ui: T.untyped).returns(T.untyped) }
      def ui=(new_ui); end

      sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
      def use_ui(new_ui, &block); end

      sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
      def alert(statement, question = T.unsafe(nil)); end

      sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
      def alert_error(statement, question = T.unsafe(nil)); end

      sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
      def alert_warning(statement, question = T.unsafe(nil)); end

      sig { params(question: T.untyped).returns(T.untyped) }
      def ask(question); end

      sig { params(prompt: T.untyped).returns(T.untyped) }
      def ask_for_password(prompt); end

      sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
      def ask_yes_no(question, default = T.unsafe(nil)); end

      sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
      def choose_from_list(question, list); end

      sig { params(statement: T.untyped).returns(T.untyped) }
      def say(statement = T.unsafe(nil)); end

      sig { params(exit_code: T.untyped).returns(T.untyped) }
      def terminate_interaction(exit_code = T.unsafe(nil)); end

      sig { params(msg: T.untyped).returns(T.untyped) }
      def verbose(msg = T.unsafe(nil)); end
    end

    class Signer
      include Gem::UserInteraction
      include Gem::DefaultUserInteraction
      include Gem::Text
      DEFAULT_OPTIONS = T.let(nil, T.untyped)

      sig { returns(T.untyped) }
      def cert_chain; end

      sig { params(cert_chain: T.untyped).returns(T.untyped) }
      def cert_chain=(cert_chain); end

      sig { returns(T.untyped) }
      def digest_algorithm; end

      sig { returns(T.untyped) }
      def digest_name; end

      sig { params(cert: T.untyped).returns(T.untyped) }
      def extract_name(cert); end

      sig do
        params(
          key: T.untyped,
          cert_chain: T.untyped,
          passphrase: T.untyped,
          options: T.untyped
        ).returns(Signer)
      end
      def initialize(key, cert_chain, passphrase = T.unsafe(nil), options = T.unsafe(nil)); end

      sig { returns(T.untyped) }
      def key; end

      sig { params(key: T.untyped).returns(T.untyped) }
      def key=(key); end

      sig { returns(T.untyped) }
      def load_cert_chain; end

      sig { returns(T.untyped) }
      def options; end

      sig { params(expiration_length: T.untyped).returns(T.untyped) }
      def re_sign_key(expiration_length: T.unsafe(nil)); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def sign(data); end

      sig { params(expired_cert: T.untyped, expired_cert_path: T.untyped, private_key: T.untyped).returns(T.untyped) }
      def self.re_sign_cert(expired_cert, expired_cert_path, private_key); end

      sig { params(text: T.untyped).returns(T.untyped) }
      def clean_text(text); end

      sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
      def format_text(text, wrap, indent = T.unsafe(nil)); end

      sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
      def levenshtein_distance(str1, str2); end

      sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
      def min3(a, b, c); end

      sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
      def truncate_text(text, description, max_length = T.unsafe(nil)); end

      sig { returns(T.untyped) }
      def ui; end

      sig { params(new_ui: T.untyped).returns(T.untyped) }
      def ui=(new_ui); end

      sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
      def use_ui(new_ui, &block); end

      sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
      def alert(statement, question = T.unsafe(nil)); end

      sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
      def alert_error(statement, question = T.unsafe(nil)); end

      sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
      def alert_warning(statement, question = T.unsafe(nil)); end

      sig { params(question: T.untyped).returns(T.untyped) }
      def ask(question); end

      sig { params(prompt: T.untyped).returns(T.untyped) }
      def ask_for_password(prompt); end

      sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
      def ask_yes_no(question, default = T.unsafe(nil)); end

      sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
      def choose_from_list(question, list); end

      sig { params(statement: T.untyped).returns(T.untyped) }
      def say(statement = T.unsafe(nil)); end

      sig { params(exit_code: T.untyped).returns(T.untyped) }
      def terminate_interaction(exit_code = T.unsafe(nil)); end

      sig { params(msg: T.untyped).returns(T.untyped) }
      def verbose(msg = T.unsafe(nil)); end
    end

    class TrustDir
      DEFAULT_PERMISSIONS = T.let(nil, T.untyped)

      sig { params(certificate: T.untyped).returns(T.untyped) }
      def cert_path(certificate); end

      sig { returns(T.untyped) }
      def dir; end

      sig { returns(T.untyped) }
      def each_certificate; end

      sig { params(dir: T.untyped, permissions: T.untyped).returns(TrustDir) }
      def initialize(dir, permissions = T.unsafe(nil)); end

      sig { params(certificate: T.untyped).returns(T.untyped) }
      def issuer_of(certificate); end

      sig { params(certificate_file: T.untyped).returns(T.untyped) }
      def load_certificate(certificate_file); end

      sig { params(name: T.untyped).returns(T.untyped) }
      def name_path(name); end

      sig { params(certificate: T.untyped).returns(T.untyped) }
      def trust_cert(certificate); end

      sig { returns(T.untyped) }
      def verify; end
    end
  end

  class SilentUI
    sig { returns(SilentUI) }
    def initialize; end
  end

  class Source
    include Comparable
    FILES = T.let(nil, T.untyped)

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { params(uri: T.untyped).returns(T.untyped) }
    def cache_dir(uri); end

    sig { returns(T.untyped) }
    def dependency_resolver_set; end

    sig { params(spec: T.untyped, dir: T.untyped).returns(T.untyped) }
    def download(spec, dir = T.unsafe(nil)); end

    sig { params(other: T.untyped).returns(T::Boolean) }
    def eql?(other); end

    sig { params(name_tuple: T.untyped).returns(T.untyped) }
    def fetch_spec(name_tuple); end

    sig { params(uri: T.untyped).returns(Source) }
    def initialize(uri); end

    sig { params(type: T.untyped).returns(T.untyped) }
    def load_specs(type); end

    sig { params(q: T.untyped).returns(T.untyped) }
    def pretty_print(q); end

    sig { returns(T::Boolean) }
    def update_cache?; end

    sig { returns(T.untyped) }
    def uri; end

    class Git
      sig { returns(T.untyped) }
      def base_dir; end

      sig { returns(T.untyped) }
      def cache; end

      sig { returns(T.untyped) }
      def checkout; end

      sig { returns(T.untyped) }
      def dir_shortref; end

      sig { params(full_spec: T.untyped, path: T.untyped).returns(T.untyped) }
      def download(full_spec, path); end

      sig do
        params(
          name: T.untyped,
          repository: T.untyped,
          reference: T.untyped,
          submodules: T.untyped
        ).returns(Git)
      end
      def initialize(name, repository, reference, submodules = T.unsafe(nil)); end

      sig { returns(T.untyped) }
      def install_dir; end

      sig { returns(T.untyped) }
      def name; end

      sig { returns(T.untyped) }
      def need_submodules; end

      sig { returns(T.untyped) }
      def reference; end

      sig { returns(T.untyped) }
      def remote; end

      sig { params(remote: T.untyped).returns(T.untyped) }
      def remote=(remote); end

      sig { returns(T.untyped) }
      def repo_cache_dir; end

      sig { returns(T.untyped) }
      def repository; end

      sig { returns(T.untyped) }
      def rev_parse; end

      sig { returns(T.untyped) }
      def root_dir; end

      sig { params(root_dir: T.untyped).returns(T.untyped) }
      def root_dir=(root_dir); end

      sig { returns(T.untyped) }
      def specs; end

      sig { returns(T.untyped) }
      def uri_hash; end
    end

    class Installed
      sig { params(spec: T.untyped, path: T.untyped).returns(T.untyped) }
      def download(spec, path); end

      sig { returns(Installed) }
      def initialize; end
    end

    class Local
      sig { params(spec: T.untyped, cache_dir: T.untyped).returns(T.untyped) }
      def download(spec, cache_dir = T.unsafe(nil)); end

      sig { params(name: T.untyped).returns(T.untyped) }
      def fetch_spec(name); end

      sig { params(gem_name: T.untyped, version: T.untyped, prerelease: T.untyped).returns(T.untyped) }
      def find_gem(gem_name, version = T.unsafe(nil), prerelease = T.unsafe(nil)); end

      sig { returns(Local) }
      def initialize; end
    end

    class Lock
      sig { params(source: T.untyped).returns(Lock) }
      def initialize(source); end

      sig { returns(T.untyped) }
      def wrapped; end
    end

    class SpecificFile
      sig { params(name: T.untyped).returns(T.untyped) }
      def fetch_spec(name); end

      sig { params(file: T.untyped).returns(SpecificFile) }
      def initialize(file); end

      sig { params(a: T.untyped).returns(T.untyped) }
      def load_specs(*a); end

      sig { returns(T.untyped) }
      def path; end

      sig { returns(T.untyped) }
      def spec; end
    end

    class Vendor
      sig { params(path: T.untyped).returns(Vendor) }
      def initialize(path); end
    end
  end

  class SourceFetchProblem
    sig { returns(T.untyped) }
    def error; end

    sig { returns(T.untyped) }
    def exception; end

    sig { params(source: T.untyped, error: T.untyped).returns(SourceFetchProblem) }
    def initialize(source, error); end

    sig { returns(T.untyped) }
    def source; end

    sig { returns(T.untyped) }
    def wordy; end
  end

  class SourceList
    include Enumerable
    Elem = type_member(fixed: T.untyped)

    sig { params(obj: T.untyped).returns(T.untyped) }
    def <<(obj); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(T.untyped) }
    def clear; end

    sig { params(source: T.untyped).returns(T.untyped) }
    def delete(source); end

    sig { params(blk: T.untyped).returns(T.untyped) }
    def each(&blk); end

    sig { params(b: T.untyped).returns(T.untyped) }
    def each_source(&b); end

    sig { returns(T::Boolean) }
    def empty?; end

    sig { returns(T.untyped) }
    def first; end

    sig { params(other: T.untyped).returns(T::Boolean) }
    def include?(other); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def replace(other); end

    sig { returns(T.untyped) }
    def sources; end

    sig { returns(T.untyped) }
    def to_a; end

    sig { returns(T.untyped) }
    def to_ary; end

    sig { params(ary: T.untyped).returns(T.untyped) }
    def self.from(ary); end
  end

  class SpecFetcher
    include Gem::UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text

    sig { params(type: T.untyped).returns(T.untyped) }
    def available_specs(type); end

    sig { params(type: T.untyped).returns(T.untyped) }
    def detect(type = T.unsafe(nil)); end

    sig { params(sources: T.untyped).returns(SpecFetcher) }
    def initialize(sources = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def latest_specs; end

    sig { returns(T.untyped) }
    def prerelease_specs; end

    sig { params(dependency: T.untyped, matching_platform: T.untyped).returns(T.untyped) }
    def search_for_dependency(dependency, matching_platform = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def sources; end

    sig { params(dependency: T.untyped, matching_platform: T.untyped).returns(T.untyped) }
    def spec_for_dependency(dependency, matching_platform = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def specs; end

    sig { params(gem_name: T.untyped, type: T.untyped).returns(T.untyped) }
    def suggest_gems_from_name(gem_name, type = T.unsafe(nil)); end

    sig { params(source: T.untyped, type: T.untyped, gracefully_ignore: T.untyped).returns(T.untyped) }
    def tuples_for(source, type, gracefully_ignore = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def self.fetcher; end

    sig { params(fetcher: T.untyped).returns(T.untyped) }
    def self.fetcher=(fetcher); end

    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def use_ui(new_ui, &block); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask(question); end

    sig { params(prompt: T.untyped).returns(T.untyped) }
    def ask_for_password(prompt); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def choose_from_list(question, list); end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def say(statement = T.unsafe(nil)); end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def terminate_interaction(exit_code = T.unsafe(nil)); end

    sig { params(msg: T.untyped).returns(T.untyped) }
    def verbose(msg = T.unsafe(nil)); end
  end

  class SpecificGemNotFoundException
    sig { returns(T.untyped) }
    def errors; end

    sig { params(name: T.untyped, version: T.untyped, errors: T.untyped).returns(SpecificGemNotFoundException) }
    def initialize(name, version, errors = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def name; end

    sig { returns(T.untyped) }
    def version; end
  end

  class Specification
    include Bundler::MatchPlatform
    include Bundler::GemHelpers
    extend Enumerable
    extend Gem::Deprecate
    DateLike = T.let(nil, T.untyped)
    DateTimeFormat = T.let(nil, T.untyped)
    INITIALIZE_CODE_FOR_DEFAULTS = T.let(nil, T.untyped)

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(T.untyped) }
    def _deprecated_default_executable; end

    sig { params(_deprecated_default_executable: T.untyped).returns(T.untyped) }
    def _deprecated_default_executable=(_deprecated_default_executable); end

    sig { returns(T.untyped) }
    def _deprecated_has_rdoc; end

    sig { params(ignored: T.untyped).returns(T.untyped) }
    def _deprecated_has_rdoc=(ignored); end

    sig { params(args: T.untyped, block: T.untyped).returns(T::Boolean) }
    def _deprecated_has_rdoc?(*args, &block); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def _dump(limit); end

    sig { returns(T.untyped) }
    def abbreviate; end

    sig { returns(T.untyped) }
    def activate; end

    sig { returns(T.untyped) }
    def activate_dependencies; end

    sig { returns(T.untyped) }
    def activated; end

    sig { params(activated: T.untyped).returns(T.untyped) }
    def activated=(activated); end

    sig { params(executables: T.untyped).returns(T.untyped) }
    def add_bindir(executables); end

    sig { params(gem: T.untyped, requirements: T.untyped).returns(T.untyped) }
    def add_dependency(gem, *requirements); end

    sig { params(gem: T.untyped, requirements: T.untyped).returns(T.untyped) }
    def add_development_dependency(gem, *requirements); end

    sig { params(gem: T.untyped, requirements: T.untyped).returns(T.untyped) }
    def add_runtime_dependency(gem, *requirements); end

    sig { returns(T.untyped) }
    def add_self_to_load_path; end

    sig { returns(T.untyped) }
    def author; end

    sig { params(o: T.untyped).returns(T.untyped) }
    def author=(o); end

    sig { returns(T.untyped) }
    def authors; end

    sig { params(value: T.untyped).returns(T.untyped) }
    def authors=(value); end

    sig { returns(T.untyped) }
    def autorequire; end

    sig { params(autorequire: T.untyped).returns(T.untyped) }
    def autorequire=(autorequire); end

    sig { returns(T.untyped) }
    def bin_dir; end

    sig { params(name: T.untyped).returns(T.untyped) }
    def bin_file(name); end

    sig { returns(T.untyped) }
    def bindir; end

    sig { params(bindir: T.untyped).returns(T.untyped) }
    def bindir=(bindir); end

    sig { returns(T.untyped) }
    def build_args; end

    sig { returns(T.untyped) }
    def build_extensions; end

    sig { returns(T.untyped) }
    def build_info_dir; end

    sig { returns(T.untyped) }
    def build_info_file; end

    sig { returns(T.untyped) }
    def cache_dir; end

    sig { returns(T.untyped) }
    def cache_file; end

    sig { returns(T.untyped) }
    def cert_chain; end

    sig { params(cert_chain: T.untyped).returns(T.untyped) }
    def cert_chain=(cert_chain); end

    sig { params(list_of_specs: T.untyped).returns(T::Boolean) }
    def conficts_when_loaded_with?(list_of_specs); end

    sig { returns(T.untyped) }
    def conflicts; end

    sig { returns(T.untyped) }
    def date; end

    sig { params(date: T.untyped).returns(T.untyped) }
    def date=(date); end

    sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
    def default_executable(*args, &block); end

    sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
    def default_executable=(*args, &block); end

    sig { params(name: T.untyped).returns(T.untyped) }
    def default_value(name); end

    sig { returns(T.untyped) }
    def dependencies; end

    sig { returns(T.untyped) }
    def dependent_gems; end

    sig { returns(T.untyped) }
    def dependent_specs; end

    sig { returns(T.untyped) }
    def description; end

    sig { params(str: T.untyped).returns(T.untyped) }
    def description=(str); end

    sig { returns(T.untyped) }
    def development_dependencies; end

    sig { params(type: T.untyped).returns(T.untyped) }
    def doc_dir(type = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def email; end

    sig { params(email: T.untyped).returns(T.untyped) }
    def email=(email); end

    sig { params(coder: T.untyped).returns(T.untyped) }
    def encode_with(coder); end

    sig { params(other: T.untyped).returns(T::Boolean) }
    def eql?(other); end

    sig { returns(T.untyped) }
    def executable; end

    sig { params(o: T.untyped).returns(T.untyped) }
    def executable=(o); end

    sig { returns(T.untyped) }
    def executables; end

    sig { params(value: T.untyped).returns(T.untyped) }
    def executables=(value); end

    sig { returns(T.untyped) }
    def extensions; end

    sig { params(extensions: T.untyped).returns(T.untyped) }
    def extensions=(extensions); end

    sig { returns(T.untyped) }
    def extra_rdoc_files; end

    sig { params(files: T.untyped).returns(T.untyped) }
    def extra_rdoc_files=(files); end

    sig { returns(T.untyped) }
    def file_name; end

    sig { returns(T.untyped) }
    def files; end

    sig { params(files: T.untyped).returns(T.untyped) }
    def files=(files); end

    sig { returns(T.untyped) }
    def for_cache; end

    sig { returns(T.untyped) }
    def git_version; end

    sig { returns(T.untyped) }
    def groups; end

    sig { returns(T::Boolean) }
    def has_conflicts?; end

    sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
    def has_rdoc(*args, &block); end

    sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
    def has_rdoc=(*args, &block); end

    sig { params(args: T.untyped, block: T.untyped).returns(T::Boolean) }
    def has_rdoc?(*args, &block); end

    sig { returns(T::Boolean) }
    def has_test_suite?; end

    sig { returns(T::Boolean) }
    def has_unit_tests?; end

    sig { returns(T.untyped) }
    def homepage; end

    sig { params(homepage: T.untyped).returns(T.untyped) }
    def homepage=(homepage); end

    sig { params(coder: T.untyped).returns(T.untyped) }
    def init_with(coder); end

    sig { params(name: T.untyped, version: T.untyped).returns(Specification) }
    def initialize(name = T.unsafe(nil), version = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def installed_by_version; end

    sig { params(version: T.untyped).returns(T.untyped) }
    def installed_by_version=(version); end

    sig { returns(T.untyped) }
    def keep_only_files_and_directories; end

    sig { returns(T.untyped) }
    def lib_files; end

    sig { returns(T.untyped) }
    def license; end

    sig { params(o: T.untyped).returns(T.untyped) }
    def license=(o); end

    sig { returns(T.untyped) }
    def licenses; end

    sig { params(licenses: T.untyped).returns(T.untyped) }
    def licenses=(licenses); end

    sig { returns(T.untyped) }
    def load_paths; end

    sig { returns(T.untyped) }
    def location; end

    sig { params(location: T.untyped).returns(T.untyped) }
    def location=(location); end

    sig { returns(T.untyped) }
    def mark_version; end

    sig { returns(T.untyped) }
    def metadata; end

    sig { params(metadata: T.untyped).returns(T.untyped) }
    def metadata=(metadata); end

    sig { params(sym: T.untyped, a: T.untyped, b: T.untyped).returns(T.untyped) }
    def method_missing(sym, *a, &b); end

    sig { returns(T::Boolean) }
    def missing_extensions?; end

    sig { params(name: T.untyped).returns(T.untyped) }
    def name=(name); end

    sig { returns(T.untyped) }
    def name_tuple; end

    sig { returns(T.untyped) }
    def nondevelopment_dependencies; end

    sig { returns(T.untyped) }
    def normalize; end

    sig { returns(T.untyped) }
    def original_name; end

    sig { returns(T.untyped) }
    def original_platform; end

    sig { params(original_platform: T.untyped).returns(T.untyped) }
    def original_platform=(original_platform); end

    sig { params(platform: T.untyped).returns(T.untyped) }
    def platform=(platform); end

    sig { returns(T.untyped) }
    def post_install_message; end

    sig { params(post_install_message: T.untyped).returns(T.untyped) }
    def post_install_message=(post_install_message); end

    sig { params(q: T.untyped).returns(T.untyped) }
    def pretty_print(q); end

    sig { returns(T.untyped) }
    def raise_if_conflicts; end

    sig { returns(T.untyped) }
    def rdoc_options; end

    sig { params(options: T.untyped).returns(T.untyped) }
    def rdoc_options=(options); end

    sig { returns(T.untyped) }
    def relative_loaded_from; end

    sig { params(relative_loaded_from: T.untyped).returns(T.untyped) }
    def relative_loaded_from=(relative_loaded_from); end

    sig { returns(T.untyped) }
    def remote; end

    sig { params(remote: T.untyped).returns(T.untyped) }
    def remote=(remote); end

    sig { returns(T.untyped) }
    def require_path; end

    sig { params(path: T.untyped).returns(T.untyped) }
    def require_path=(path); end

    sig { params(val: T.untyped).returns(T.untyped) }
    def require_paths=(val); end

    sig { returns(T.untyped) }
    def required_ruby_version; end

    sig { params(req: T.untyped).returns(T.untyped) }
    def required_ruby_version=(req); end

    sig { returns(T.untyped) }
    def required_rubygems_version; end

    sig { params(req: T.untyped).returns(T.untyped) }
    def required_rubygems_version=(req); end

    sig { returns(T.untyped) }
    def requirements; end

    sig { params(req: T.untyped).returns(T.untyped) }
    def requirements=(req); end

    sig { returns(T.untyped) }
    def reset_nil_attributes_to_default; end

    sig { returns(T.untyped) }
    def rg_extension_dir; end

    sig { returns(T.untyped) }
    def rg_full_gem_path; end

    sig { returns(T.untyped) }
    def rg_loaded_from; end

    sig { returns(T.untyped) }
    def ri_dir; end

    sig { params(rubyforge_project: T.untyped).returns(T.untyped) }
    def rubyforge_project=(rubyforge_project); end

    sig { returns(T.untyped) }
    def rubygems_version; end

    sig { params(rubygems_version: T.untyped).returns(T.untyped) }
    def rubygems_version=(rubygems_version); end

    sig { returns(T.untyped) }
    def runtime_dependencies; end

    sig { returns(T.untyped) }
    def sanitize; end

    sig { params(string: T.untyped).returns(T.untyped) }
    def sanitize_string(string); end

    sig { params(dependency: T.untyped).returns(T::Boolean) }
    def satisfies_requirement?(dependency); end

    sig { returns(T.untyped) }
    def signing_key; end

    sig { params(signing_key: T.untyped).returns(T.untyped) }
    def signing_key=(signing_key); end

    sig { returns(T.untyped) }
    def sort_obj; end

    sig { returns(T.untyped) }
    def source; end

    sig { params(source: T.untyped).returns(T.untyped) }
    def source=(source); end

    sig { returns(T.untyped) }
    def spec_dir; end

    sig { returns(T.untyped) }
    def spec_file; end

    sig { returns(T.untyped) }
    def spec_name; end

    sig { returns(T.untyped) }
    def specification_version; end

    sig { params(specification_version: T.untyped).returns(T.untyped) }
    def specification_version=(specification_version); end

    sig { returns(T.untyped) }
    def summary; end

    sig { params(str: T.untyped).returns(T.untyped) }
    def summary=(str); end

    sig { returns(T.untyped) }
    def test_file; end

    sig { params(file: T.untyped).returns(T.untyped) }
    def test_file=(file); end

    sig { returns(T.untyped) }
    def test_files; end

    sig { params(files: T.untyped).returns(T.untyped) }
    def test_files=(files); end

    sig { params(path: T.untyped).returns(T.untyped) }
    def to_gemfile(path = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def to_ruby; end

    sig { returns(T.untyped) }
    def to_ruby_for_cache; end

    sig { params(opts: T.untyped).returns(T.untyped) }
    def to_yaml(opts = T.unsafe(nil)); end

    sig { params(trail: T.untyped, visited: T.untyped, block: T.untyped).returns(T.untyped) }
    def traverse(trail = T.unsafe(nil), visited = T.unsafe(nil), &block); end

    sig { params(packaging: T.untyped, strict: T.untyped).returns(T.untyped) }
    def validate(packaging = T.unsafe(nil), strict = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def validate_dependencies; end

    sig { returns(T.untyped) }
    def validate_metadata; end

    sig { returns(T.untyped) }
    def validate_permissions; end

    sig { params(version: T.untyped).returns(T.untyped) }
    def version=(version); end

    sig { params(tag: T.untyped, vals: T.untyped).returns(T.untyped) }
    def yaml_initialize(tag, vals); end

    sig { returns(T.untyped) }
    def self._all; end

    sig { returns(T.untyped) }
    def self._clear_load_cache; end

    sig { params(specs: T.untyped, prerelease: T.untyped).returns(T.untyped) }
    def self._latest_specs(specs, prerelease = T.unsafe(nil)); end

    sig { params(str: T.untyped).returns(T.untyped) }
    def self._load(str); end

    sig { params(specs: T.untyped).returns(T.untyped) }
    def self._resort!(specs); end

    sig { params(spec: T.untyped).returns(T.untyped) }
    def self.add_spec(spec); end

    sig { params(specs: T.untyped).returns(T.untyped) }
    def self.add_specs(*specs); end

    sig { returns(T.untyped) }
    def self.all; end

    sig { params(specs: T.untyped).returns(T.untyped) }
    def self.all=(specs); end

    sig { returns(T.untyped) }
    def self.all_names; end

    sig { returns(T.untyped) }
    def self.array_attributes; end

    sig { returns(T.untyped) }
    def self.attribute_names; end

    sig { returns(T.untyped) }
    def self.dirs; end

    sig { params(dirs: T.untyped).returns(T.untyped) }
    def self.dirs=(dirs); end

    sig { params(blk: T.untyped).returns(T.untyped) }
    def self.each(&blk); end

    sig { params(dirs: T.untyped).returns(T.untyped) }
    def self.each_gemspec(dirs); end

    sig { params(dirs: T.untyped).returns(T.untyped) }
    def self.each_spec(dirs); end

    sig { params(path: T.untyped).returns(T.untyped) }
    def self.find_active_stub_by_path(path); end

    sig { params(full_name: T.untyped).returns(T.untyped) }
    def self.find_all_by_full_name(full_name); end

    sig { params(name: T.untyped, requirements: T.untyped).returns(T.untyped) }
    def self.find_all_by_name(name, *requirements); end

    sig { params(name: T.untyped, requirements: T.untyped).returns(T.untyped) }
    def self.find_by_name(name, *requirements); end

    sig { params(path: T.untyped).returns(T.untyped) }
    def self.find_by_path(path); end

    sig { params(path: T.untyped).returns(T.untyped) }
    def self.find_in_unresolved(path); end

    sig { params(path: T.untyped).returns(T.untyped) }
    def self.find_in_unresolved_tree(path); end

    sig { params(path: T.untyped).returns(T.untyped) }
    def self.find_inactive_by_path(path); end

    sig { params(input: T.untyped).returns(T.untyped) }
    def self.from_yaml(input); end

    sig { params(prerelease: T.untyped).returns(T.untyped) }
    def self.latest_specs(prerelease = T.unsafe(nil)); end

    sig { params(file: T.untyped).returns(T.untyped) }
    def self.load(file); end

    sig { returns(T.untyped) }
    def self.load_defaults; end

    sig { returns(T.untyped) }
    def self.non_nil_attributes; end

    sig { params(input: T.untyped).returns(T.untyped) }
    def self.normalize_yaml_input(input); end

    sig { returns(T.untyped) }
    def self.outdated; end

    sig { returns(T.untyped) }
    def self.outdated_and_latest_version; end

    sig { params(spec: T.untyped).returns(T.untyped) }
    def self.remove_spec(spec); end

    sig { params(name: T.untyped).returns(T::Boolean) }
    def self.required_attribute?(name); end

    sig { returns(T.untyped) }
    def self.required_attributes; end

    sig { returns(T.untyped) }
    def self.reset; end

    sig { returns(T.untyped) }
    def self.stubs; end

    sig { params(name: T.untyped).returns(T.untyped) }
    def self.stubs_for(name); end

    sig { returns(T.untyped) }
    def self.unresolved_deps; end
  end

  class SpecificationPolicy
    HOMEPAGE_URI_PATTERN = T.let(nil, T.untyped)
    LAZY = T.let(nil, T.untyped)
    LAZY_PATTERN = T.let(nil, T.untyped)
    METADATA_LINK_KEYS = T.let(nil, T.untyped)
    SPECIAL_CHARACTERS = T.let(nil, T.untyped)
    VALID_NAME_PATTERN = T.let(nil, T.untyped)
    VALID_URI_PATTERN = T.let(nil, T.untyped)

    sig { params(specification: T.untyped).returns(SpecificationPolicy) }
    def initialize(specification); end

    sig { returns(T.untyped) }
    def packaging; end

    sig { params(packaging: T.untyped).returns(T.untyped) }
    def packaging=(packaging); end

    sig { params(strict: T.untyped).returns(T.untyped) }
    def validate(strict = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def validate_dependencies; end

    sig { returns(T.untyped) }
    def validate_metadata; end

    sig { returns(T.untyped) }
    def validate_permissions; end
  end

  class StreamUI
    extend Gem::Deprecate

    sig { params(statement: T.untyped).returns(T.untyped) }
    def _deprecated_debug(statement); end

    sig { returns(T.untyped) }
    def _gets_noecho; end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask(question); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask_for_password(question); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(exception: T.untyped).returns(T.untyped) }
    def backtrace(exception); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def choose_from_list(question, list); end

    sig { returns(T.untyped) }
    def close; end

    sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
    def debug(*args, &block); end

    sig { params(args: T.untyped).returns(T.untyped) }
    def download_reporter(*args); end

    sig { returns(T.untyped) }
    def errs; end

    sig do
      params(
        in_stream: T.untyped,
        out_stream: T.untyped,
        err_stream: T.untyped,
        usetty: T.untyped
      ).returns(StreamUI)
    end
    def initialize(in_stream, out_stream, err_stream = T.unsafe(nil), usetty = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def ins; end

    sig { returns(T.untyped) }
    def outs; end

    sig { params(args: T.untyped).returns(T.untyped) }
    def progress_reporter(*args); end

    sig { returns(T.untyped) }
    def require_io_console; end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def say(statement = T.unsafe(nil)); end

    sig { params(status: T.untyped).returns(T.untyped) }
    def terminate_interaction(status = T.unsafe(nil)); end

    sig { returns(T::Boolean) }
    def tty?; end
  end

  class StubSpecification
    sig { returns(T.untyped) }
    def build_extensions; end

    sig { returns(T.untyped) }
    def extensions; end

    sig do
      params(
        filename: T.untyped,
        base_dir: T.untyped,
        gems_dir: T.untyped,
        default_gem: T.untyped
      ).returns(StubSpecification)
    end
    def initialize(filename, base_dir, gems_dir, default_gem); end

    sig { returns(T::Boolean) }
    def missing_extensions?; end

    sig { returns(T::Boolean) }
    def valid?; end

    sig { params(filename: T.untyped, base_dir: T.untyped, gems_dir: T.untyped).returns(T.untyped) }
    def self.default_gemspec_stub(filename, base_dir, gems_dir); end

    sig { params(filename: T.untyped, base_dir: T.untyped, gems_dir: T.untyped).returns(T.untyped) }
    def self.gemspec_stub(filename, base_dir, gems_dir); end

    class StubLine
      sig { returns(T.untyped) }
      def extensions; end

      sig { returns(T.untyped) }
      def full_name; end

      sig { params(data: T.untyped, extensions: T.untyped).returns(StubLine) }
      def initialize(data, extensions); end

      sig { returns(T.untyped) }
      def name; end

      sig { returns(T.untyped) }
      def platform; end

      sig { returns(T.untyped) }
      def require_paths; end

      sig { returns(T.untyped) }
      def version; end
    end
  end

  class SystemExitException
    sig { returns(T.untyped) }
    def exit_code; end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def exit_code=(exit_code); end

    sig { params(exit_code: T.untyped).returns(SystemExitException) }
    def initialize(exit_code); end
  end

  module Text
    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end
  end

  class UninstallError
    sig { returns(T.untyped) }
    def spec; end

    sig { params(spec: T.untyped).returns(T.untyped) }
    def spec=(spec); end
  end

  class UnsatisfiableDependencyError
    sig { returns(T.untyped) }
    def dependency; end

    sig { returns(T.untyped) }
    def errors; end

    sig { params(errors: T.untyped).returns(T.untyped) }
    def errors=(errors); end

    sig { params(dep: T.untyped, platform_mismatch: T.untyped).returns(UnsatisfiableDependencyError) }
    def initialize(dep, platform_mismatch = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def name; end

    sig { returns(T.untyped) }
    def version; end
  end

  class UriFormatter
    sig { returns(T.untyped) }
    def escape; end

    sig { params(uri: T.untyped).returns(UriFormatter) }
    def initialize(uri); end

    sig { returns(T.untyped) }
    def normalize; end

    sig { returns(T.untyped) }
    def unescape; end

    sig { returns(T.untyped) }
    def uri; end
  end

  module UserInteraction
    include Gem::DefaultUserInteraction
    include Gem::Text

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_error(statement, question = T.unsafe(nil)); end

    sig { params(statement: T.untyped, question: T.untyped).returns(T.untyped) }
    def alert_warning(statement, question = T.unsafe(nil)); end

    sig { params(question: T.untyped).returns(T.untyped) }
    def ask(question); end

    sig { params(prompt: T.untyped).returns(T.untyped) }
    def ask_for_password(prompt); end

    sig { params(question: T.untyped, default: T.untyped).returns(T.untyped) }
    def ask_yes_no(question, default = T.unsafe(nil)); end

    sig { params(question: T.untyped, list: T.untyped).returns(T.untyped) }
    def choose_from_list(question, list); end

    sig { params(statement: T.untyped).returns(T.untyped) }
    def say(statement = T.unsafe(nil)); end

    sig { params(exit_code: T.untyped).returns(T.untyped) }
    def terminate_interaction(exit_code = T.unsafe(nil)); end

    sig { params(msg: T.untyped).returns(T.untyped) }
    def verbose(msg = T.unsafe(nil)); end

    sig { params(text: T.untyped).returns(T.untyped) }
    def clean_text(text); end

    sig { params(text: T.untyped, wrap: T.untyped, indent: T.untyped).returns(T.untyped) }
    def format_text(text, wrap, indent = T.unsafe(nil)); end

    sig { params(str1: T.untyped, str2: T.untyped).returns(T.untyped) }
    def levenshtein_distance(str1, str2); end

    sig { params(a: T.untyped, b: T.untyped, c: T.untyped).returns(T.untyped) }
    def min3(a, b, c); end

    sig { params(text: T.untyped, description: T.untyped, max_length: T.untyped).returns(T.untyped) }
    def truncate_text(text, description, max_length = T.unsafe(nil)); end

    sig { returns(T.untyped) }
    def ui; end

    sig { params(new_ui: T.untyped).returns(T.untyped) }
    def ui=(new_ui); end

    sig { params(new_ui: T.untyped, block: T.untyped).returns(T.untyped) }
    def use_ui(new_ui, &block); end
  end

  module Util
    sig { params(glob: T.untyped, base_path: T.untyped).returns(T.untyped) }
    def self.glob_files_in_dir(glob, base_path); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def self.gunzip(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def self.gzip(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def self.inflate(data); end

    sig { params(command: T.untyped).returns(T.untyped) }
    def self.popen(*command); end

    sig { params(command: T.untyped).returns(T.untyped) }
    def self.silent_system(*command); end

    sig { params(directory: T.untyped, block: T.untyped).returns(T.untyped) }
    def self.traverse_parents(directory, &block); end
  end

  class Version
    sig { returns(T.untyped) }
    def _segments; end

    sig { returns(T.untyped) }
    def _split_segments; end

    sig { returns(T.untyped) }
    def _version; end

    sig { returns(T.untyped) }
    def approximate_recommendation; end

    sig { returns(T.untyped) }
    def bump; end

    sig { returns(T.untyped) }
    def canonical_segments; end

    sig { params(coder: T.untyped).returns(T.untyped) }
    def encode_with(coder); end

    sig { params(other: T.untyped).returns(T::Boolean) }
    def eql?(other); end

    sig { params(coder: T.untyped).returns(T.untyped) }
    def init_with(coder); end

    sig { returns(T.untyped) }
    def marshal_dump; end

    sig { params(array: T.untyped).returns(T.untyped) }
    def marshal_load(array); end

    sig { returns(T::Boolean) }
    def prerelease?; end

    sig { params(q: T.untyped).returns(T.untyped) }
    def pretty_print(q); end

    sig { returns(T.untyped) }
    def release; end

    sig { returns(T.untyped) }
    def segments; end

    sig { returns(T.untyped) }
    def to_yaml_properties; end

    sig { returns(T.untyped) }
    def version; end

    sig { params(tag: T.untyped, map: T.untyped).returns(T.untyped) }
    def yaml_initialize(tag, map); end

    sig { params(version: T.untyped).returns(T::Boolean) }
    def self.correct?(version); end

    sig { params(input: T.untyped).returns(T.untyped) }
    def self.create(input); end

    sig { params(version: T.untyped).returns(T.untyped) }
    def self.new(version); end
  end
end

Gem::UnsatisfiableDepedencyError = Gem::UnsatisfiableDependencyError
Gem::Ext::ExtConfBuilder::FileEntry = FileUtils::Entry_
Gem::Version::Requirement = Gem::Requirement
Gem::Resolver::DependencyConflict = Gem::Resolver::Conflict
