# typed: strong

class Thor
  include(::Thor::Base)
  include(::Thor::Invocation)
  include(::Thor::Shell)
  extend(::Thor::Base::ClassMethods)
  extend(::Thor::Invocation::ClassMethods)

  def help(command = T.unsafe(nil), subcommand = T.unsafe(nil)); end

  class << self
    def check_unknown_options!(options = T.unsafe(nil)); end
    def check_unknown_options?(config); end
    def command_help(shell, command_name); end
    def default_command(meth = T.unsafe(nil)); end
    def default_task(meth = T.unsafe(nil)); end
    def deprecation_warning(message); end
    def desc(usage, description, options = T.unsafe(nil)); end
    def disable_required_check!(*command_names); end
    def disable_required_check?(command); end
    def help(shell, subcommand = T.unsafe(nil)); end
    def long_desc(long_description, options = T.unsafe(nil)); end
    def map(mappings = T.unsafe(nil), **kw); end
    def method_option(name, options = T.unsafe(nil)); end
    def method_options(options = T.unsafe(nil)); end
    def option(name, options = T.unsafe(nil)); end
    def options(options = T.unsafe(nil)); end
    def package_name(name, _ = T.unsafe(nil)); end
    def printable_commands(all = T.unsafe(nil), subcommand = T.unsafe(nil)); end
    def printable_tasks(all = T.unsafe(nil), subcommand = T.unsafe(nil)); end
    def register(klass, subcommand_name, usage, description, options = T.unsafe(nil)); end
    def stop_on_unknown_option!(*command_names); end
    def stop_on_unknown_option?(command); end
    def subcommand(subcommand, subcommand_class); end
    def subcommand_classes; end
    def subcommands; end
    def subtask(subcommand, subcommand_class); end
    def subtasks; end
    def task_help(shell, command_name); end

    protected

    def banner(command, namespace = T.unsafe(nil), subcommand = T.unsafe(nil)); end
    def baseclass; end
    def create_command(meth); end
    def create_task(meth); end
    def disable_required_check; end
    def dispatch(meth, given_args, given_opts, config); end
    def dynamic_command_class; end
    def find_command_possibilities(meth); end
    def find_task_possibilities(meth); end
    def initialize_added; end
    def normalize_command_name(meth); end
    def normalize_task_name(meth); end
    def retrieve_command_name(args); end
    def retrieve_task_name(args); end
    def stop_on_unknown_option; end
    def subcommand_help(cmd); end
    def subtask_help(cmd); end
  end
end

module Thor::Actions
  mixes_in_class_methods(::Thor::Actions::ClassMethods)

  def initialize(args = T.unsafe(nil), options = T.unsafe(nil), config = T.unsafe(nil)); end

  def action(instance); end
  def add_file(destination, *args, &block); end
  def add_link(destination, *args); end
  def append_file(path, *args, &block); end
  def append_to_file(path, *args, &block); end
  def apply(path, config = T.unsafe(nil)); end
  def behavior; end
  def behavior=(_arg0); end
  def chmod(path, mode, config = T.unsafe(nil)); end
  def comment_lines(path, flag, *args); end
  def copy_file(source, *args, &block); end
  def create_file(destination, *args, &block); end
  def create_link(destination, *args); end
  def destination_root; end
  def destination_root=(root); end
  def directory(source, *args, &block); end
  def empty_directory(destination, config = T.unsafe(nil)); end
  def find_in_source_paths(file); end
  def get(source, *args, &block); end
  def gsub_file(path, flag, *args, &block); end
  def in_root; end
  def inject_into_class(path, klass, *args, &block); end
  def inject_into_file(destination, *args, &block); end
  def inject_into_module(path, module_name, *args, &block); end
  def insert_into_file(destination, *args, &block); end
  def inside(dir = T.unsafe(nil), config = T.unsafe(nil), &block); end
  def link_file(source, *args); end
  def prepend_file(path, *args, &block); end
  def prepend_to_file(path, *args, &block); end
  def relative_to_original_destination_root(path, remove_dot = T.unsafe(nil)); end
  def remove_dir(path, config = T.unsafe(nil)); end
  def remove_file(path, config = T.unsafe(nil)); end
  def run(command, config = T.unsafe(nil)); end
  def run_ruby_script(command, config = T.unsafe(nil)); end
  def source_paths; end
  def template(source, *args, &block); end
  def thor(command, *args); end
  def uncomment_lines(path, flag, *args); end

  protected

  def _cleanup_options_and_set(options, key); end
  def _shared_configuration; end

  private

  def capture(*args); end
  def concat(string); end
  def output_buffer; end
  def output_buffer=(_arg0); end
  def with_output_buffer(buf = T.unsafe(nil)); end

  class << self
    def included(base); end
  end
end

class Thor::Actions::CapturableERB < ::ERB
  def set_eoutvar(compiler, eoutvar = T.unsafe(nil)); end
end

module Thor::Actions::ClassMethods
  def add_runtime_options!; end
  def source_paths; end
  def source_paths_for_search; end
  def source_root(path = T.unsafe(nil)); end
end

class Thor::Actions::CreateFile < ::Thor::Actions::EmptyDirectory
  def initialize(base, destination, data, config = T.unsafe(nil)); end

  def data; end
  def identical?; end
  def invoke!; end
  def render; end

  protected

  def force_on_collision?; end
  def force_or_skip_or_conflict(force, skip, &block); end
  def on_conflict_behavior(&block); end
end

class Thor::Actions::CreateLink < ::Thor::Actions::CreateFile
  def data; end
  def exists?; end
  def identical?; end
  def invoke!; end
end

class Thor::Actions::Directory < ::Thor::Actions::EmptyDirectory
  def initialize(base, source, destination = T.unsafe(nil), config = T.unsafe(nil), &block); end

  def invoke!; end
  def revoke!; end
  def source; end

  protected

  def execute!; end
  def file_level_lookup(previous_lookup); end
  def files(lookup); end
end

class Thor::Actions::EmptyDirectory
  def initialize(base, destination, config = T.unsafe(nil)); end

  def base; end
  def config; end
  def destination; end
  def exists?; end
  def given_destination; end
  def invoke!; end
  def relative_destination; end
  def revoke!; end

  protected

  def convert_encoded_instructions(filename); end
  def destination=(destination); end
  def invoke_with_conflict_check(&block); end
  def on_conflict_behavior; end
  def on_file_clash_behavior; end
  def pretend?; end
  def say_status(status, color); end
end

class Thor::Actions::InjectIntoFile < ::Thor::Actions::EmptyDirectory
  def initialize(base, destination, data, config); end

  def behavior; end
  def flag; end
  def invoke!; end
  def replacement; end
  def revoke!; end

  protected

  def replace!(regexp, string, force); end
  def say_status(behavior, warning: T.unsafe(nil), color: T.unsafe(nil)); end
end

Thor::Actions::WARNINGS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

class Thor::AmbiguousCommandError < ::Thor::Error
end

Thor::AmbiguousTaskError = Thor::AmbiguousCommandError

class Thor::Argument
  def initialize(name, options = T.unsafe(nil)); end

  def banner; end
  def default; end
  def description; end
  def enum; end
  def human_name; end
  def name; end
  def required; end
  def required?; end
  def show_default?; end
  def type; end
  def usage; end

  protected

  def default_banner; end
  def valid_type?(type); end
  def validate!; end
end

Thor::Argument::VALID_TYPES = T.let(T.unsafe(nil), T::Array[T.untyped])

class Thor::Arguments
  def initialize(arguments = T.unsafe(nil)); end

  def parse(args); end
  def remaining; end

  private

  def check_requirement!; end
  def current_is_value?; end
  def last?; end
  def no_or_skip?(arg); end
  def parse_array(name); end
  def parse_hash(name); end
  def parse_numeric(name); end
  def parse_string(name); end
  def peek; end
  def shift; end
  def unshift(arg); end

  class << self
    def parse(*args); end
    def split(args); end
  end
end

Thor::Arguments::NUMERIC = T.let(T.unsafe(nil), Regexp)

module Thor::Base
  include(::Thor::Invocation)
  include(::Thor::Shell)

  mixes_in_class_methods(::Thor::Base::ClassMethods)

  def initialize(args = T.unsafe(nil), local_options = T.unsafe(nil), config = T.unsafe(nil)); end

  def args; end
  def args=(_arg0); end
  def options; end
  def options=(_arg0); end
  def parent_options; end
  def parent_options=(_arg0); end

  class << self
    def included(base); end
    def register_klass_file(klass); end
    def shell; end
    def shell=(_arg0); end
    def subclass_files; end
    def subclasses; end
  end
end

module Thor::Base::ClassMethods
  def all_commands; end
  def all_tasks; end
  def allow_incompatible_default_type!; end
  def argument(name, options = T.unsafe(nil)); end
  def arguments; end
  def attr_accessor(*_arg0); end
  def attr_reader(*_arg0); end
  def attr_writer(*_arg0); end
  def check_default_type; end
  def check_default_type!; end
  def check_unknown_options; end
  def check_unknown_options!; end
  def check_unknown_options?(config); end
  def class_option(name, options = T.unsafe(nil)); end
  def class_options(options = T.unsafe(nil)); end
  def commands; end
  def disable_required_check?(command_name); end
  def exit_on_failure?; end
  def group(name = T.unsafe(nil)); end
  def handle_argument_error(command, error, args, arity); end
  def handle_no_command_error(command, has_namespace = T.unsafe(nil)); end
  def handle_no_task_error(command, has_namespace = T.unsafe(nil)); end
  def namespace(name = T.unsafe(nil)); end
  def no_commands(&block); end
  def no_commands?; end
  def no_commands_context; end
  def no_tasks(&block); end
  def public_command(*names); end
  def public_task(*names); end
  def remove_argument(*names); end
  def remove_class_option(*names); end
  def remove_command(*names); end
  def remove_task(*names); end
  def start(given_args = T.unsafe(nil), config = T.unsafe(nil)); end
  def stop_on_unknown_option?(command_name); end
  def strict_args_position; end
  def strict_args_position!; end
  def strict_args_position?(config); end
  def tasks; end

  protected

  def baseclass; end
  def basename; end
  def build_option(name, options, scope); end
  def build_options(options, scope); end
  def class_options_help(shell, groups = T.unsafe(nil)); end
  def create_command(meth); end
  def create_task(meth); end
  def dispatch(command, given_args, given_opts, config); end
  def find_and_refresh_command(name); end
  def find_and_refresh_task(name); end
  def from_superclass(method, default = T.unsafe(nil)); end
  def inherited(klass); end
  def initialize_added; end
  def is_thor_reserved_word?(word, type); end
  def method_added(meth); end
  def print_options(shell, options, group_name = T.unsafe(nil)); end
end

class Thor::Command < ::Struct
  Elem = type_member(fixed: T.untyped)

  def initialize(name, description, long_description, usage, options = T.unsafe(nil)); end

  def formatted_usage(klass, namespace = T.unsafe(nil), subcommand = T.unsafe(nil)); end
  def hidden?; end
  def run(instance, args = T.unsafe(nil)); end

  protected

  def handle_argument_error?(instance, error, caller); end
  def handle_no_method_error?(instance, error, caller); end
  def local_method?(instance, name); end
  def not_debugging?(instance); end
  def private_method?(instance); end
  def public_method?(instance); end
  def required_arguments_for(klass, usage); end
  def required_options; end
  def sans_backtrace(backtrace, caller); end

  private

  def initialize_copy(other); end
end

Thor::Command::FILE_REGEXP = T.let(T.unsafe(nil), Regexp)

module Thor::CoreExt
end

class Thor::CoreExt::HashWithIndifferentAccess < ::Hash
  K = type_member(fixed: T.untyped)
  V = type_member(fixed: T.untyped)
  Elem = type_member(fixed: T.untyped)

  def initialize(hash = T.unsafe(nil)); end

  def [](key); end
  def []=(key, value); end
  def delete(key); end
  def fetch(key, *args); end
  def key?(key); end
  def merge(other); end
  def merge!(other); end
  def replace(other_hash); end
  def reverse_merge(other); end
  def reverse_merge!(other_hash); end
  def to_hash; end
  def values_at(*indices); end

  protected

  def convert_key(key); end
  def method_missing(method, *args); end
end

Thor::Correctable = DidYouMean::Correctable

class Thor::DynamicCommand < ::Thor::Command
  Elem = type_member(fixed: T.untyped)

  def initialize(name, options = T.unsafe(nil)); end

  def run(instance, args = T.unsafe(nil)); end
end

Thor::DynamicTask = Thor::DynamicCommand

class Thor::Error < ::StandardError
end

class Thor::Group
  include(::Thor::Base)
  include(::Thor::Invocation)
  include(::Thor::Shell)
  extend(::Thor::Base::ClassMethods)
  extend(::Thor::Invocation::ClassMethods)


  protected

  def _invoke_for_class_method(klass, command = T.unsafe(nil), *args, &block); end

  class << self
    def class_options_help(shell, groups = T.unsafe(nil)); end
    def desc(description = T.unsafe(nil)); end
    def get_options_from_invocations(group_options, base_options); end
    def handle_argument_error(command, error, _args, arity); end
    def help(shell); end
    def invocation_blocks; end
    def invocations; end
    def invoke(*names, &block); end
    def invoke_from_option(*names, &block); end
    def printable_commands(*_arg0); end
    def printable_tasks(*_arg0); end
    def remove_invocation(*names); end

    protected

    def banner; end
    def baseclass; end
    def create_command(meth); end
    def create_task(meth); end
    def dispatch(command, given_args, given_opts, config); end
    def self_command; end
    def self_task; end
  end
end

Thor::HELP_MAPPINGS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Thor::HiddenCommand < ::Thor::Command
  Elem = type_member(fixed: T.untyped)

  def hidden?; end
end

Thor::HiddenTask = Thor::HiddenCommand

module Thor::Invocation
  mixes_in_class_methods(::Thor::Invocation::ClassMethods)

  def initialize(args = T.unsafe(nil), options = T.unsafe(nil), config = T.unsafe(nil), &block); end

  def current_command_chain; end
  def invoke(name = T.unsafe(nil), *args); end
  def invoke_all; end
  def invoke_command(command, *args); end
  def invoke_task(command, *args); end
  def invoke_with_padding(*args); end

  protected

  def _parse_initialization_options(args, opts, config); end
  def _retrieve_class_and_command(name, sent_command = T.unsafe(nil)); end
  def _retrieve_class_and_task(name, sent_command = T.unsafe(nil)); end
  def _shared_configuration; end

  class << self
    def included(base); end
  end
end

module Thor::Invocation::ClassMethods
  def prepare_for_invocation(key, name); end
end

class Thor::InvocationError < ::Thor::Error
end

module Thor::LineEditor
  class << self
    def best_available; end
    def readline(prompt, options = T.unsafe(nil)); end
  end
end

class Thor::LineEditor::Basic
  def initialize(prompt, options); end

  def options; end
  def prompt; end
  def readline; end

  private

  def echo?; end
  def get_input; end

  class << self
    def available?; end
  end
end

class Thor::LineEditor::Readline < ::Thor::LineEditor::Basic
  def readline; end

  private

  def add_to_history?; end
  def completion_options; end
  def completion_proc; end
  def use_path_completion?; end

  class << self
    def available?; end
  end
end

class Thor::LineEditor::Readline::PathCompletion
  def initialize(text); end

  def matches; end

  private

  def absolute_matches; end
  def base_path; end
  def glob_pattern; end
  def relative_matches; end
  def text; end
end

class Thor::MalformattedArgumentError < ::Thor::InvocationError
end

class Thor::NestedContext
  def initialize; end

  def enter; end
  def entered?; end

  private

  def pop; end
  def push; end
end

class Thor::NoKwargSpellChecker < ::DidYouMean::SpellChecker
  def initialize(dictionary); end
end

class Thor::Option < ::Thor::Argument
  def initialize(name, options = T.unsafe(nil)); end

  def aliases; end
  def array?; end
  def boolean?; end
  def group; end
  def hash?; end
  def hide; end
  def human_name; end
  def lazy_default; end
  def numeric?; end
  def repeatable; end
  def string?; end
  def switch_name; end
  def usage(padding = T.unsafe(nil)); end

  protected

  def dasherize(str); end
  def dasherized?; end
  def undasherize(str); end
  def validate!; end
  def validate_default_type!; end

  class << self
    def parse(key, value); end
  end
end

Thor::Option::VALID_TYPES = T.let(T.unsafe(nil), T::Array[T.untyped])

class Thor::Options < ::Thor::Arguments
  def initialize(hash_options = T.unsafe(nil), defaults = T.unsafe(nil), stop_on_unknown = T.unsafe(nil), disable_required_check = T.unsafe(nil)); end

  def check_unknown!; end
  def parse(args); end
  def peek; end
  def remaining; end

  protected

  def assign_result!(option, result); end
  def current_is_switch?; end
  def current_is_switch_formatted?; end
  def current_is_value?; end
  def normalize_switch(arg); end
  def parse_boolean(switch); end
  def parse_peek(switch, option); end
  def parsing_options?; end
  def switch?(arg); end
  def switch_option(arg); end

  class << self
    def to_switches(options); end
  end
end

Thor::Options::EQ_RE = T.let(T.unsafe(nil), Regexp)

Thor::Options::LONG_RE = T.let(T.unsafe(nil), Regexp)

Thor::Options::OPTS_END = T.let(T.unsafe(nil), String)

Thor::Options::SHORT_NUM = T.let(T.unsafe(nil), Regexp)

Thor::Options::SHORT_RE = T.let(T.unsafe(nil), Regexp)

Thor::Options::SHORT_SQ_RE = T.let(T.unsafe(nil), Regexp)

module Thor::RakeCompat
  include(::FileUtils::StreamUtils_)
  include(::FileUtils)
  # include(::Rake::FileUtilsExt)
  # include(::Rake::DSL)

  class << self
    def included(base); end
    def rake_classes; end
  end
end

class Thor::RequiredArgumentMissingError < ::Thor::InvocationError
end

module Thor::Sandbox
end

module Thor::Shell
  def initialize(args = T.unsafe(nil), options = T.unsafe(nil), config = T.unsafe(nil)); end

  def ask(*args, &block); end
  def error(*args, &block); end
  def file_collision(*args, &block); end
  def no?(*args, &block); end
  def print_in_columns(*args, &block); end
  def print_table(*args, &block); end
  def print_wrapped(*args, &block); end
  def say(*args, &block); end
  def say_status(*args, &block); end
  def set_color(*args, &block); end
  def shell; end
  def shell=(_arg0); end
  def terminal_width(*args, &block); end
  def with_padding; end
  def yes?(*args, &block); end

  protected

  def _shared_configuration; end
end

class Thor::Shell::Basic
  def initialize; end

  def ask(statement, *args); end
  def base; end
  def base=(_arg0); end
  def error(statement); end
  def file_collision(destination); end
  def indent(count = T.unsafe(nil)); end
  def mute; end
  def mute?; end
  def no?(statement, color = T.unsafe(nil)); end
  def padding; end
  def padding=(value); end
  def print_in_columns(array); end
  def print_table(array, options = T.unsafe(nil)); end
  def print_wrapped(message, options = T.unsafe(nil)); end
  def say(message = T.unsafe(nil), color = T.unsafe(nil), force_new_line = T.unsafe(nil)); end
  def say_status(status, message, log_status = T.unsafe(nil)); end
  def set_color(string, *_arg1); end
  def terminal_width; end
  def yes?(statement, color = T.unsafe(nil)); end

  protected

  def answer_match(possibilities, answer, case_insensitive); end
  def as_unicode; end
  def ask_filtered(statement, color, options); end
  def ask_simply(statement, color, options); end
  def can_display_colors?; end
  def dynamic_width; end
  def dynamic_width_stty; end
  def dynamic_width_tput; end
  def file_collision_help; end
  def git_merge_tool; end
  def is?(value); end
  def lookup_color(color); end
  def merge(destination, content); end
  def merge_tool; end
  def prepare_message(message, *color); end
  def quiet?; end
  def show_diff(destination, content); end
  def stderr; end
  def stdout; end
  def truncate(string, width); end
  def unix?; end
end

Thor::Shell::Basic::DEFAULT_TERMINAL_WIDTH = T.let(T.unsafe(nil), Integer)

class Thor::Shell::Color < ::Thor::Shell::Basic
  def set_color(string, *colors); end

  protected

  def are_colors_disabled?; end
  def can_display_colors?; end
  def diff_lcs_loaded?; end
  def output_diff_line(diff); end
  def show_diff(destination, content); end
end

Thor::Shell::Color::BLACK = T.let(T.unsafe(nil), String)

Thor::Shell::Color::BLUE = T.let(T.unsafe(nil), String)

Thor::Shell::Color::BOLD = T.let(T.unsafe(nil), String)

Thor::Shell::Color::CLEAR = T.let(T.unsafe(nil), String)

Thor::Shell::Color::CYAN = T.let(T.unsafe(nil), String)

Thor::Shell::Color::GREEN = T.let(T.unsafe(nil), String)

Thor::Shell::Color::MAGENTA = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_BLACK = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_BLUE = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_CYAN = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_GREEN = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_MAGENTA = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_RED = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_WHITE = T.let(T.unsafe(nil), String)

Thor::Shell::Color::ON_YELLOW = T.let(T.unsafe(nil), String)

Thor::Shell::Color::RED = T.let(T.unsafe(nil), String)

Thor::Shell::Color::WHITE = T.let(T.unsafe(nil), String)

Thor::Shell::Color::YELLOW = T.let(T.unsafe(nil), String)

class Thor::Shell::HTML < ::Thor::Shell::Basic
  def ask(statement, color = T.unsafe(nil)); end
  def set_color(string, *colors); end

  protected

  def can_display_colors?; end
  def diff_lcs_loaded?; end
  def output_diff_line(diff); end
  def show_diff(destination, content); end
end

Thor::Shell::HTML::BLACK = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::BLUE = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::BOLD = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::CYAN = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::GREEN = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::MAGENTA = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_BLACK = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_BLUE = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_CYAN = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_GREEN = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_MAGENTA = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_RED = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_WHITE = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::ON_YELLOW = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::RED = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::WHITE = T.let(T.unsafe(nil), String)

Thor::Shell::HTML::YELLOW = T.let(T.unsafe(nil), String)

Thor::Shell::SHELL_DELEGATED_METHODS = T.let(T.unsafe(nil), T::Array[T.untyped])

Thor::TEMPLATE_EXTNAME = T.let(T.unsafe(nil), String)

Thor::THOR_RESERVED_WORDS = T.let(T.unsafe(nil), T::Array[T.untyped])

Thor::Task = Thor::Command

class Thor::UndefinedCommandError < ::Thor::Error
  include(::DidYouMean::Correctable)

  def initialize(command, all_commands, namespace); end

  def all_commands; end
  def command; end
end

class Thor::UndefinedCommandError::SpellChecker
  def initialize(error); end

  def corrections; end
  def error; end
  def spell_checker; end
end

Thor::UndefinedTaskError = Thor::UndefinedCommandError

class Thor::UnknownArgumentError < ::Thor::Error
  include(::DidYouMean::Correctable)

  def initialize(switches, unknown); end

  def switches; end
  def unknown; end
end

class Thor::UnknownArgumentError::SpellChecker
  def initialize(error); end

  def corrections; end
  def error; end
  def spell_checker; end
end

module Thor::Util
  class << self
    def camel_case(str); end
    def escape_globs(path); end
    def escape_html(string); end
    def find_by_namespace(namespace); end
    def find_class_and_command_by_namespace(namespace, fallback = T.unsafe(nil)); end
    def find_class_and_task_by_namespace(namespace, fallback = T.unsafe(nil)); end
    def globs_for(path); end
    def load_thorfile(path, content = T.unsafe(nil), debug = T.unsafe(nil)); end
    def namespace_from_thor_class(constant); end
    def namespaces_in_content(contents, file = T.unsafe(nil)); end
    def ruby_command; end
    def snake_case(str); end
    def thor_classes_in(klass); end
    def thor_root; end
    def thor_root_glob; end
    def user_home; end
  end
end
