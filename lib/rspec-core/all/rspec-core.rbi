# typed: true

module RSpec
  def self.clear_examples; end
  def self.configuration; end
  def self.configuration=(arg0); end
  def self.configure; end
  def self.const_missing(name); end
  def self.context(*args, &example_group_block); end
  def self.current_example; end
  def self.current_example=(example); end
  def self.describe(*args, &example_group_block); end
  def self.example_group(*args, &example_group_block); end
  def self.fcontext(*args, &example_group_block); end
  def self.fdescribe(*args, &example_group_block); end
  def self.reset; end
  def self.shared_context(name, *args, &block); end
  def self.shared_examples(name, *args, &block); end
  def self.shared_examples_for(name, *args, &block); end
  def self.world; end
  def self.world=(arg0); end
  def self.xcontext(*args, &example_group_block); end
  def self.xdescribe(*args, &example_group_block); end
  extend RSpec::Core::Warnings
end
module RSpec::Core
  def self.path_to_executable; end
end
module RSpec::Core::Version
end
module RSpec::Core::Warnings
  def deprecate(deprecated, data = nil); end
  def warn_deprecation(message, opts = nil); end
  def warn_with(message, options = nil); end
end
class RSpec::Core::Set
  def <<(key); end
  def clear; end
  def delete(key); end
  def each(&block); end
  def empty?; end
  def include?(key); end
  def initialize(array = nil); end
  def merge(values); end
  include Enumerable
end
module RSpec::Core::FlatMap
  def flat_map(array, &block); end
  def self.flat_map(array, &block); end
end
class RSpec::Core::FilterManager
  def add_ids(rerun_path, scoped_ids); end
  def add_location(file_path, line_numbers); end
  def add_path_to_arrays_filter(filter_key, path, values); end
  def empty?; end
  def exclude(*args); end
  def exclude_only(*args); end
  def exclude_with_low_priority(*args); end
  def exclusions; end
  def file_scoped_include?(ex_metadata, ids, locations); end
  def include(*args); end
  def include_only(*args); end
  def include_with_low_priority(*args); end
  def inclusions; end
  def initialize; end
  def prune(examples); end
  def prune_conditionally_filtered_examples(examples); end
end
class RSpec::Core::FilterRules
  def [](key); end
  def add(updated); end
  def add_with_low_priority(updated); end
  def clear; end
  def delete(key); end
  def description; end
  def each_pair(&block); end
  def empty?; end
  def fetch(*args, &block); end
  def include_example?(example); end
  def initialize(rules = nil); end
  def opposite; end
  def opposite=(arg0); end
  def rules; end
  def self.build; end
  def use_only(updated); end
end
class RSpec::Core::InclusionRules < RSpec::Core::FilterRules
  def add(*args); end
  def add_with_low_priority(*args); end
  def apply_standalone_filter(updated); end
  def include_example?(example); end
  def is_standalone_filter?(rules); end
  def replace_filters(new_rules); end
  def split_file_scoped_rules; end
  def standalone?; end
end
module RSpec::Core::DSL
  def self.change_global_dsl(&changes); end
  def self.example_group_aliases; end
  def self.expose_example_group_alias(name); end
  def self.expose_example_group_alias_globally(method_name); end
  def self.expose_globally!; end
  def self.exposed_globally?; end
  def self.remove_globally!; end
  def self.top_level; end
  def self.top_level=(arg0); end
end
module RSpec::Core::Formatters
  def self.register(formatter_class, *notifications); end
end
module RSpec::Core::Formatters::ConsoleCodes
  def config_colors_to_methods; end
  def console_code_for(code_or_symbol); end
  def self.config_colors_to_methods; end
  def self.console_code_for(code_or_symbol); end
  def self.wrap(text, code_or_symbol); end
  def wrap(text, code_or_symbol); end
end
class RSpec::Core::Formatters::SnippetExtractor
  def beginning_line_number; end
  def expression_lines; end
  def expression_node; end
  def expression_outmost_node?(node); end
  def initialize(source, beginning_line_number, max_line_count = nil); end
  def line_range_of_expression; end
  def line_range_of_location_nodes_in_expression; end
  def location_nodes_at_beginning_line; end
  def max_line_count; end
  def self.extract_expression_lines_at(file_path, beginning_line_number, max_line_count = nil); end
  def self.extract_line_at(file_path, line_number); end
  def self.least_indentation_from(lines); end
  def self.source_from_file(path); end
  def source; end
  def unclosed_tokens_in_line_range(line_range); end
end
class RSpec::Core::Formatters::SnippetExtractor::NoSuchFileError < StandardError
end
class RSpec::Core::Formatters::SnippetExtractor::NoSuchLineError < StandardError
end
class RSpec::Core::Formatters::SnippetExtractor::NoExpressionAtLineError < StandardError
end
class RSpec::Core::Formatters::SyntaxHighlighter
  def color_enabled_implementation; end
  def highlight(lines); end
  def implementation; end
  def initialize(configuration); end
  def self.attempt_to_add_rspec_terms_to_coderay_keywords; end
end
module RSpec::Core::Formatters::SyntaxHighlighter::CodeRayImplementation
  def self.highlight_syntax(lines); end
end
module RSpec::Core::Formatters::SyntaxHighlighter::NoSyntaxHighlightingImplementation
  def self.highlight_syntax(lines); end
end
class RSpec::Core::Formatters::ExceptionPresenter
  def add_shared_group_lines(lines, colorizer); end
  def backtrace_formatter; end
  def colorized_formatted_backtrace(colorizer = nil); end
  def colorized_message_lines(colorizer = nil); end
  def description; end
  def detail_formatter; end
  def encoded_description(description); end
  def encoded_string(string); end
  def encoding_of(string); end
  def example; end
  def exception; end
  def exception_backtrace; end
  def exception_class_name(exception = nil); end
  def exception_lines; end
  def exception_message_string(exception); end
  def extra_detail_formatter; end
  def extra_failure_lines; end
  def failure_lines; end
  def failure_slash_error_lines; end
  def final_exception(exception, previous = nil); end
  def find_failed_line; end
  def formatted_backtrace(exception = nil); end
  def formatted_cause(exception); end
  def formatted_message_and_backtrace(colorizer); end
  def fully_formatted(failure_number, colorizer = nil); end
  def fully_formatted_lines(failure_number, colorizer); end
  def indent_lines(lines, failure_number); end
  def initialize(exception, example, options = nil); end
  def message_color; end
  def message_lines; end
  def read_failed_lines; end
end
class RSpec::Core::Formatters::ExceptionPresenter::Factory
  def build; end
  def initialize(example); end
  def multiple_exception_summarizer(exception, prior_detail_formatter, color); end
  def multiple_exceptions_error?(exception); end
  def options; end
  def pending_options; end
  def sub_failure_list_formatter(exception, message_color); end
  def with_multiple_error_options_as_needed(exception, options); end
end
module RSpec::Core::Formatters::ExceptionPresenter::Factory::EmptyBacktraceFormatter
  def self.format_backtrace(*arg0); end
end
class RSpec::Core::Formatters::ExceptionPresenter::Factory::CommonBacktraceTruncater
  def initialize(parent); end
  def with_truncated_backtrace(child); end
end
class RSpec::Core::MultipleExceptionError < StandardError
  def aggregation_block_label; end
  def aggregation_metadata; end
  def all_exceptions; end
  def exception_count_description; end
  def failures; end
  def initialize(*exceptions); end
  def message; end
  def other_errors; end
  def summary; end
  include RSpec::Core::MultipleExceptionError::InterfaceTag
end
module RSpec::Core::MultipleExceptionError::InterfaceTag
  def add(exception); end
  def self.for(ex); end
end
module RSpec::Core::ShellEscape
  def conditionally_quote(id); end
  def escape(shell_command); end
  def quote(argument); end
  def self.conditionally_quote(id); end
  def self.escape(shell_command); end
  def self.quote(argument); end
  def self.shell_allows_unquoted_ids?; end
  def shell_allows_unquoted_ids?; end
end
module RSpec::Core::Formatters::Helpers
  def self.format_duration(duration); end
  def self.format_seconds(float, precision = nil); end
  def self.organize_ids(ids); end
  def self.pluralize(count, string); end
  def self.strip_trailing_zeroes(string); end
end
module RSpec::Core::Notifications
end
module RSpec::Core::Notifications::NullColorizer
  def self.wrap(line, _code_or_symbol); end
  def wrap(line, _code_or_symbol); end
end
class RSpec::Core::Notifications::StartNotification < Struct
  def count; end
  def count=(_); end
  def load_time; end
  def load_time=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RSpec::Core::Notifications::ExampleNotification < Struct
  def example; end
  def example=(_); end
  def self.[](*arg0); end
  def self.for(example); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RSpec::Core::Notifications::ExamplesNotification
  def examples; end
  def failed_examples; end
  def failure_notifications; end
  def format_examples(examples); end
  def fully_formatted_failed_examples(colorizer = nil); end
  def fully_formatted_pending_examples(colorizer = nil); end
  def initialize(reporter); end
  def notifications; end
  def pending_examples; end
  def pending_notifications; end
end
class RSpec::Core::Notifications::FailedExampleNotification < RSpec::Core::Notifications::ExampleNotification
  def colorized_formatted_backtrace(colorizer = nil); end
  def colorized_message_lines(colorizer = nil); end
  def description; end
  def exception; end
  def formatted_backtrace; end
  def fully_formatted(failure_number, colorizer = nil); end
  def fully_formatted_lines(failure_number, colorizer = nil); end
  def initialize(example, exception_presenter = nil); end
  def message_lines; end
  def self.new(*arg0); end
end
class RSpec::Core::Notifications::PendingExampleFixedNotification < RSpec::Core::Notifications::FailedExampleNotification
end
class RSpec::Core::Notifications::PendingExampleFailedAsExpectedNotification < RSpec::Core::Notifications::FailedExampleNotification
end
class RSpec::Core::Notifications::SkippedExampleNotification < RSpec::Core::Notifications::ExampleNotification
  def fully_formatted(pending_number, colorizer = nil); end
  def self.new(*arg0); end
end
class RSpec::Core::Notifications::GroupNotification < Struct
  def group; end
  def group=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RSpec::Core::Notifications::MessageNotification < Struct
  def message; end
  def message=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RSpec::Core::Notifications::SeedNotification < Struct
  def fully_formatted; end
  def seed; end
  def seed=(_); end
  def seed_used?; end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def used; end
  def used=(_); end
end
class RSpec::Core::Notifications::SummaryNotification < Struct
  def colorized_rerun_commands(colorizer = nil); end
  def colorized_totals_line(colorizer = nil); end
  def duplicate_rerun_locations; end
  def duration; end
  def duration=(_); end
  def errors_outside_of_examples_count; end
  def errors_outside_of_examples_count=(_); end
  def example_count; end
  def examples; end
  def examples=(_); end
  def failed_examples; end
  def failed_examples=(_); end
  def failure_count; end
  def formatted_duration; end
  def formatted_load_time; end
  def fully_formatted(colorizer = nil); end
  def load_time; end
  def load_time=(_); end
  def pending_count; end
  def pending_examples; end
  def pending_examples=(_); end
  def rerun_argument_for(example); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def totals_line; end
  include RSpec::Core::ShellEscape
end
class RSpec::Core::Notifications::ProfileNotification
  def calculate_slowest_groups; end
  def duration; end
  def examples; end
  def initialize(duration, examples, number_of_examples, example_groups); end
  def number_of_examples; end
  def percentage; end
  def slow_duration; end
  def slowest_examples; end
  def slowest_groups; end
end
class RSpec::Core::Notifications::DeprecationNotification < Struct
  def call_site; end
  def call_site=(_); end
  def deprecated; end
  def deprecated=(_); end
  def message; end
  def message=(_); end
  def replacement; end
  def replacement=(_); end
  def self.[](*arg0); end
  def self.from_hash(data); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RSpec::Core::Notifications::NullNotification
end
class RSpec::Core::Notifications::CustomNotification < Struct
  def self.for(options = nil); end
end
class RSpec::Core::Reporter
  def abort_with(msg, exit_status); end
  def close; end
  def close_after; end
  def deprecation(hash); end
  def ensure_listeners_ready; end
  def example_failed(example); end
  def example_finished(example); end
  def example_group_finished(group); end
  def example_group_started(group); end
  def example_passed(example); end
  def example_pending(example); end
  def example_started(example); end
  def examples; end
  def exit_early(exit_code); end
  def fail_fast_limit_met?; end
  def failed_examples; end
  def finish; end
  def initialize(configuration); end
  def message(message); end
  def mute_profile_output?; end
  def notify(event, notification); end
  def notify_non_example_exception(exception, context_description); end
  def pending_examples; end
  def prepare_default(loader, output_stream, deprecation_stream); end
  def publish(event, options = nil); end
  def register_listener(listener, *notifications); end
  def registered_listeners(notification); end
  def report(expected_example_count); end
  def seed_used?; end
  def start(expected_example_count, time = nil); end
  def stop; end
end
class RSpec::Core::NullReporter
  def self.method_missing(*arg0); end
end
module RSpec::Core::Hooks
  def after(*args, &block); end
  def append_after(*args, &block); end
  def append_before(*args, &block); end
  def around(*args, &block); end
  def before(*args, &block); end
  def hooks; end
  def prepend_after(*args, &block); end
  def prepend_before(*args, &block); end
end
class RSpec::Core::Hooks::Hook < Struct
  def block; end
  def block=(_); end
  def options; end
  def options=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RSpec::Core::Hooks::BeforeHook < RSpec::Core::Hooks::Hook
  def run(example); end
end
class RSpec::Core::Hooks::AfterHook < RSpec::Core::Hooks::Hook
  def run(example); end
end
class RSpec::Core::Hooks::AfterContextHook < RSpec::Core::Hooks::Hook
  def run(example); end
end
class RSpec::Core::Hooks::AroundHook < RSpec::Core::Hooks::Hook
  def execute_with(example, procsy); end
  def hook_description; end
end
class RSpec::Core::Hooks::HookCollections
  def all_hooks_for(position, scope); end
  def ensure_hooks_initialized_for(position, scope); end
  def extract_scope_from(args); end
  def hooks_for(position, scope); end
  def initialize(owner, filterable_item_repo_class); end
  def known_scope?(scope); end
  def matching_hooks_for(position, scope, example_or_group); end
  def normalized_scope_for(scope); end
  def owner_parent_groups; end
  def process(host, parent_groups, globals, position, scope); end
  def processable_hooks_for(position, scope, host); end
  def register(prepend_or_append, position, *args, &block); end
  def register_global_singleton_context_hooks(example, globals); end
  def register_globals(host, globals); end
  def run(position, scope, example_or_group); end
  def run_around_example_hooks_for(example); end
  def run_example_hooks_for(example, position, each_method); end
  def run_owned_hooks_for(position, scope, example_or_group); end
  def scope_and_options_from(*args); end
end
module RSpec::Core::MemoizedHelpers
  def __init_memoized; end
  def __memoized; end
  def initialize(*arg0); end
  def is_expected; end
  def self.define_helpers_on(example_group); end
  def self.get_constant_or_yield(example_group, name); end
  def self.module_for(example_group); end
  def should(matcher = nil, message = nil); end
  def should_not(matcher = nil, message = nil); end
  def subject; end
end
class RSpec::Core::MemoizedHelpers::ThreadsafeMemoized
  def fetch_or_store(key); end
  def initialize; end
end
class RSpec::Core::MemoizedHelpers::NonThreadSafeMemoized
  def fetch_or_store(key); end
  def initialize; end
end
class RSpec::Core::MemoizedHelpers::ContextHookMemoized
  def self.fetch_or_store(key, &_block); end
  def self.isolate_for_context_hook(example_group_instance); end
end
class RSpec::Core::MemoizedHelpers::ContextHookMemoized::Before < RSpec::Core::MemoizedHelpers::ContextHookMemoized
  def self.article; end
  def self.hook_expression; end
  def self.hook_intention; end
end
class RSpec::Core::MemoizedHelpers::ContextHookMemoized::After < RSpec::Core::MemoizedHelpers::ContextHookMemoized
  def self.article; end
  def self.hook_expression; end
  def self.hook_intention; end
end
module RSpec::Core::MemoizedHelpers::ClassMethods
  def let!(name, &block); end
  def let(name, &block); end
  def subject!(name = nil, &block); end
  def subject(name = nil, &block); end
end
module RSpec::Core::Metadata
  def self.ascend(metadata); end
  def self.ascending(metadata); end
  def self.build_hash_from(args, warn_about_example_group_filtering = nil); end
  def self.deep_hash_dup(object); end
  def self.id_from(metadata); end
  def self.location_tuple_from(metadata); end
  def self.relative_path(line); end
  def self.relative_path_regex; end
end
class RSpec::Core::Metadata::HashPopulator
  def block; end
  def build_description_from(parent_description = nil, my_description = nil); end
  def build_scoped_id_for(file_path); end
  def description_args; end
  def description_separator(parent_part, child_part); end
  def ensure_valid_user_keys; end
  def file_path_and_line_number_from(backtrace); end
  def initialize(metadata, user_metadata, index_provider, description_args, block); end
  def metadata; end
  def populate; end
  def populate_location_attributes; end
  def user_metadata; end
end
class RSpec::Core::Metadata::ExampleHash < RSpec::Core::Metadata::HashPopulator
  def described_class; end
  def full_description; end
  def self.create(group_metadata, user_metadata, index_provider, description, block); end
end
class RSpec::Core::Metadata::ExampleGroupHash < RSpec::Core::Metadata::HashPopulator
  def described_class; end
  def full_description; end
  def self.backwards_compatibility_default_proc(&example_group_selector); end
  def self.create(parent_group_metadata, user_metadata, example_group_index, *args, &block); end
  def self.hash_with_backwards_compatibility_default_proc; end
end
module RSpec::Core::HashImitatable
  def <(*args, &block); end
  def <=(*args, &block); end
  def >(*args, &block); end
  def >=(*args, &block); end
  def [](key); end
  def []=(key, value); end
  def all?(*args, &block); end
  def any?(*args, &block); end
  def assoc(*args, &block); end
  def chain(*args, &block); end
  def chunk(*args, &block); end
  def chunk_while(*args, &block); end
  def clear(*args, &block); end
  def collect(*args, &block); end
  def collect_concat(*args, &block); end
  def compact!(*args, &block); end
  def compact(*args, &block); end
  def compare_by_identity(*args, &block); end
  def compare_by_identity?(*args, &block); end
  def count(*args, &block); end
  def cycle(*args, &block); end
  def default(*args, &block); end
  def default=(*args, &block); end
  def default_proc(*args, &block); end
  def default_proc=(*args, &block); end
  def delete(*args, &block); end
  def delete_if(*args, &block); end
  def detect(*args, &block); end
  def dig(*args, &block); end
  def directly_supports_attribute?(name); end
  def drop(*args, &block); end
  def drop_while(*args, &block); end
  def each(*args, &block); end
  def each_cons(*args, &block); end
  def each_entry(*args, &block); end
  def each_key(*args, &block); end
  def each_pair(*args, &block); end
  def each_slice(*args, &block); end
  def each_value(*args, &block); end
  def each_with_index(*args, &block); end
  def each_with_object(*args, &block); end
  def empty?(*args, &block); end
  def entries(*args, &block); end
  def extra_hash_attributes; end
  def fetch(*args, &block); end
  def fetch_values(*args, &block); end
  def filter!(*args, &block); end
  def filter(*args, &block); end
  def find(*args, &block); end
  def find_all(*args, &block); end
  def find_index(*args, &block); end
  def first(*args, &block); end
  def flat_map(*args, &block); end
  def flatten(*args, &block); end
  def get_value(name); end
  def grep(*args, &block); end
  def grep_v(*args, &block); end
  def group_by(*args, &block); end
  def has_key?(*args, &block); end
  def has_value?(*args, &block); end
  def hash_for_delegation; end
  def include?(*args, &block); end
  def index(*args, &block); end
  def inject(*args, &block); end
  def invert(*args, &block); end
  def issue_deprecation(_method_name, *_args); end
  def keep_if(*args, &block); end
  def key(*args, &block); end
  def key?(*args, &block); end
  def keys(*args, &block); end
  def lazy(*args, &block); end
  def length(*args, &block); end
  def map(*args, &block); end
  def max(*args, &block); end
  def max_by(*args, &block); end
  def member?(*args, &block); end
  def merge!(*args, &block); end
  def merge(*args, &block); end
  def min(*args, &block); end
  def min_by(*args, &block); end
  def minmax(*args, &block); end
  def minmax_by(*args, &block); end
  def none?(*args, &block); end
  def one?(*args, &block); end
  def partition(*args, &block); end
  def rassoc(*args, &block); end
  def reduce(*args, &block); end
  def rehash(*args, &block); end
  def reject!(*args, &block); end
  def reject(*args, &block); end
  def replace(*args, &block); end
  def reverse_each(*args, &block); end
  def select!(*args, &block); end
  def select(*args, &block); end
  def self.included(klass); end
  def set_value(name, value); end
  def shift(*args, &block); end
  def size(*args, &block); end
  def slice(*args, &block); end
  def slice_after(*args, &block); end
  def slice_before(*args, &block); end
  def slice_when(*args, &block); end
  def sort(*args, &block); end
  def sort_by(*args, &block); end
  def store(*args, &block); end
  def sum(*args, &block); end
  def take(*args, &block); end
  def take_while(*args, &block); end
  def to_a(*args, &block); end
  def to_h; end
  def to_hash(*args, &block); end
  def to_proc(*args, &block); end
  def to_set(*args, &block); end
  def transform_keys!(*args, &block); end
  def transform_keys(*args, &block); end
  def transform_values!(*args, &block); end
  def transform_values(*args, &block); end
  def uniq(*args, &block); end
  def update(*args, &block); end
  def value?(*args, &block); end
  def values(*args, &block); end
  def values_at(*args, &block); end
  def zip(*args, &block); end
end
module RSpec::Core::HashImitatable::ClassMethods
  def attr_accessor(*names); end
  def hash_attribute_names; end
end
class RSpec::Core::LegacyExampleGroupHash
  def directly_supports_attribute?(name); end
  def get_value(name); end
  def initialize(metadata); end
  def set_value(name, value); end
  def to_h; end
  extend RSpec::Core::HashImitatable::ClassMethods
  include RSpec::Core::HashImitatable
end
module RSpec::Core::MetadataFilter
  def self.apply?(predicate, filters, metadata); end
  def self.filter_applies?(key, filter_value, metadata); end
  def self.filter_applies_to_any_value?(key, value, metadata); end
  def self.filters_apply?(key, value, metadata); end
  def self.id_filter_applies?(rerun_paths_to_scoped_ids, metadata); end
  def self.location_filter_applies?(locations, metadata); end
  def self.proc_filter_applies?(key, proc, metadata); end
  def self.silence_metadata_example_group_deprecations; end
end
module RSpec::Core::FilterableItemRepository
end
class RSpec::Core::FilterableItemRepository::UpdateOptimized
  def append(item, metadata); end
  def delete(item, metadata); end
  def initialize(applies_predicate); end
  def items_and_filters; end
  def items_for(request_meta); end
  def prepend(item, metadata); end
end
class RSpec::Core::FilterableItemRepository::QueryOptimized < RSpec::Core::FilterableItemRepository::UpdateOptimized
  def append(item, metadata); end
  def applicable_metadata_from(metadata); end
  def delete(item, metadata); end
  def find_items_for(request_meta); end
  def handle_mutation(metadata); end
  def initialize(applies_predicate); end
  def items_for(metadata); end
  def prepend(item, metadata); end
  def proc_keys_from(metadata); end
  def reconstruct_caches; end
end
module RSpec::Core::Pending
  def pending(message = nil); end
  def self.mark_fixed!(example); end
  def self.mark_pending!(example, message_or_bool); end
  def self.mark_skipped!(example, message_or_bool); end
  def skip(message = nil); end
end
class RSpec::Core::Pending::SkipDeclaredInExample < StandardError
  def argument; end
  def initialize(argument); end
end
class RSpec::Core::Pending::PendingExampleFixedError < StandardError
end
class RSpec::Core::Formatters::Loader
  def add(formatter_to_use, *paths); end
  def built_in_formatter(key); end
  def custom_formatter(formatter_ref); end
  def default_formatter; end
  def default_formatter=(arg0); end
  def duplicate_formatter_exists?(new_formatter); end
  def existing_formatter_implements?(notification); end
  def find_formatter(formatter_to_use); end
  def formatters; end
  def initialize(reporter); end
  def notifications_for(formatter_class); end
  def open_stream(path_or_wrapper); end
  def path_for(const_ref); end
  def prepare_default(output_stream, deprecation_stream); end
  def register(formatter, notifications); end
  def reporter; end
  def self.formatters; end
  def setup_default(output_stream, deprecation_stream); end
  def string_const?(str); end
  def underscore(camel_cased_word); end
  def underscore_with_fix_for_non_standard_rspec_naming(string); end
end
module RSpec::Core::Ordering
end
class RSpec::Core::Ordering::Identity
  def order(items); end
end
class RSpec::Core::Ordering::Random
  def initialize(configuration); end
  def jenkins_hash_digest(string); end
  def order(items); end
  def used?; end
end
class RSpec::Core::Ordering::Custom
  def initialize(callable); end
  def order(list); end
end
class RSpec::Core::Ordering::Registry
  def fetch(name, &fallback); end
  def initialize(configuration); end
  def register(sym, strategy); end
  def used_random_seed?; end
end
class RSpec::Core::Ordering::ConfigurationManager
  def force(hash); end
  def initialize; end
  def order=(type); end
  def ordering_registry; end
  def register_ordering(name, strategy = nil); end
  def seed; end
  def seed=(seed); end
  def seed_used?; end
end
class RSpec::Core::World
  def all_example_groups; end
  def all_examples; end
  def announce_exclusion_filter(announcements); end
  def announce_filters; end
  def announce_inclusion_filter(announcements); end
  def descending_declaration_line_numbers_by_file; end
  def everything_filtered_message; end
  def example_count(groups = nil); end
  def example_group_counts_by_spec_file; end
  def example_groups; end
  def exclusion_filter; end
  def fail_if_config_and_cli_options_invalid; end
  def filter_manager; end
  def filtered_examples; end
  def inclusion_filter; end
  def initialize(configuration = nil); end
  def non_example_failure; end
  def non_example_failure=(arg0); end
  def num_example_groups_defined_in(file); end
  def ordered_example_groups; end
  def preceding_declaration_line(absolute_file_name, filter_line); end
  def prepare_example_filtering; end
  def record(example_group); end
  def registered_example_group_files; end
  def report_filter_message(message); end
  def reporter; end
  def reset; end
  def shared_example_group_registry; end
  def source_from_file(path); end
  def syntax_highlighter; end
  def traverse_example_group_trees_until(&block); end
  def wants_to_quit; end
  def wants_to_quit=(arg0); end
end
module RSpec::Core::World::Null
  def self.all_example_groups; end
  def self.example_groups; end
  def self.non_example_failure; end
  def self.non_example_failure=(_); end
  def self.registered_example_group_files; end
  def self.traverse_example_group_trees_until; end
end
class RSpec::Core::BacktraceFormatter
  def backtrace_line(line); end
  def exclude?(line); end
  def exclusion_patterns; end
  def exclusion_patterns=(arg0); end
  def filter_gem(gem_name); end
  def format_backtrace(backtrace, options = nil); end
  def full_backtrace=(arg0); end
  def full_backtrace?; end
  def inclusion_patterns; end
  def inclusion_patterns=(arg0); end
  def initialize; end
  def matches?(patterns, line); end
end
module RSpec::Core::RubyProject
  def add_dir_to_load_path(dir); end
  def add_to_load_path(*dirs); end
  def ascend_until; end
  def determine_root; end
  def find_first_parent_containing(dir); end
  def root; end
  def self.add_dir_to_load_path(dir); end
  def self.add_to_load_path(*dirs); end
  def self.ascend_until; end
  def self.determine_root; end
  def self.find_first_parent_containing(dir); end
  def self.root; end
end
class RSpec::Core::Formatters::DeprecationFormatter
  def count; end
  def deprecation(notification); end
  def deprecation_message_for(data); end
  def deprecation_stream; end
  def deprecation_summary(_notification); end
  def initialize(deprecation_stream, summary_stream); end
  def output; end
  def printer; end
  def summary_stream; end
end
class RSpec::Core::Formatters::DeprecationFormatter::SpecifiedDeprecationMessage < Struct
  def deprecation_type_for(data); end
  def initialize(data); end
  def output_formatted(str); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def to_s; end
  def too_many_warnings_message; end
  def type; end
  def type=(_); end
end
class RSpec::Core::Formatters::DeprecationFormatter::GeneratedDeprecationMessage < Struct
  def initialize(data); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def to_s; end
  def too_many_warnings_message; end
  def type; end
  def type=(_); end
end
class RSpec::Core::Formatters::DeprecationFormatter::ImmediatePrinter
  def deprecation_formatter; end
  def deprecation_stream; end
  def deprecation_summary; end
  def initialize(deprecation_stream, summary_stream, deprecation_formatter); end
  def print_deprecation_message(data); end
  def summary_stream; end
end
class RSpec::Core::Formatters::DeprecationFormatter::DelayedPrinter
  def deprecation_formatter; end
  def deprecation_stream; end
  def deprecation_summary; end
  def initialize(deprecation_stream, summary_stream, deprecation_formatter); end
  def print_deferred_deprecation_warnings; end
  def print_deprecation_message(data); end
  def stash_deprecation_message(deprecation_message); end
  def summary_stream; end
end
class RSpec::Core::Formatters::DeprecationFormatter::RaiseErrorStream
  def puts(message); end
  def summarize(summary_stream, deprecation_count); end
end
class RSpec::Core::Formatters::DeprecationFormatter::FileStream
  def initialize(file); end
  def puts(*args); end
  def summarize(summary_stream, deprecation_count); end
end
class RSpec::Core::DeprecationError < StandardError
end
class RSpec::Core::OutputWrapper
  def <<(*args, &block); end
  def advise(*args, &block); end
  def autoclose=(*args, &block); end
  def autoclose?(*args, &block); end
  def binmode(*args, &block); end
  def binmode?(*args, &block); end
  def bytes(*args, &block); end
  def chars(*args, &block); end
  def close(*args, &block); end
  def close_on_exec=(*args, &block); end
  def close_on_exec?(*args, &block); end
  def close_read(*args, &block); end
  def close_write(*args, &block); end
  def closed?(*args, &block); end
  def codepoints(*args, &block); end
  def each(*args, &block); end
  def each_byte(*args, &block); end
  def each_char(*args, &block); end
  def each_codepoint(*args, &block); end
  def each_line(*args, &block); end
  def eof(*args, &block); end
  def eof?(*args, &block); end
  def external_encoding(*args, &block); end
  def fcntl(*args, &block); end
  def fdatasync(*args, &block); end
  def fileno(*args, &block); end
  def flush(*args, &block); end
  def fsync(*args, &block); end
  def getbyte(*args, &block); end
  def getc(*args, &block); end
  def gets(*args, &block); end
  def initialize(output); end
  def inspect(*args, &block); end
  def internal_encoding(*args, &block); end
  def ioctl(*args, &block); end
  def isatty(*args, &block); end
  def lineno(*args, &block); end
  def lineno=(*args, &block); end
  def lines(*args, &block); end
  def method_missing(name, *args, &block); end
  def nread(*args, &block); end
  def output; end
  def output=(arg0); end
  def pathconf(*args, &block); end
  def pid(*args, &block); end
  def pos(*args, &block); end
  def pos=(*args, &block); end
  def pread(*args, &block); end
  def print(*args, &block); end
  def printf(*args, &block); end
  def putc(*args, &block); end
  def puts(*args, &block); end
  def pwrite(*args, &block); end
  def read(*args, &block); end
  def read_nonblock(*args, &block); end
  def readbyte(*args, &block); end
  def readchar(*args, &block); end
  def readline(*args, &block); end
  def readlines(*args, &block); end
  def readpartial(*args, &block); end
  def ready?(*args, &block); end
  def reopen(*args, &block); end
  def respond_to?(name, priv = nil); end
  def rewind(*args, &block); end
  def seek(*args, &block); end
  def set_encoding(*args, &block); end
  def stat(*args, &block); end
  def sync(*args, &block); end
  def sync=(*args, &block); end
  def sysread(*args, &block); end
  def sysseek(*args, &block); end
  def syswrite(*args, &block); end
  def tell(*args, &block); end
  def to_i(*args, &block); end
  def to_io(*args, &block); end
  def tty?(*args, &block); end
  def ungetbyte(*args, &block); end
  def ungetc(*args, &block); end
  def wait(*args, &block); end
  def wait_readable(*args, &block); end
  def wait_writable(*args, &block); end
  def write(*args, &block); end
  def write_nonblock(*args, &block); end
end
class RSpec::Core::Configuration
  def absolute_pattern?(pattern); end
  def add_formatter(formatter, output = nil); end
  def add_hook_to_existing_matching_groups(meta, scope, &block); end
  def add_setting(name, opts = nil); end
  def after(scope = nil, *meta, &block); end
  def alias_example_group_to(new_name, *args); end
  def alias_example_to(name, *args); end
  def alias_it_behaves_like_to(new_name, report_label = nil); end
  def alias_it_should_behave_like_to(new_name, report_label = nil); end
  def append_after(scope = nil, *meta, &block); end
  def append_before(scope = nil, *meta, &block); end
  def apply_derived_metadata_to(metadata); end
  def around(scope = nil, *meta, &block); end
  def assert_no_example_groups_defined(config_option); end
  def backtrace_exclusion_patterns; end
  def backtrace_exclusion_patterns=(patterns); end
  def backtrace_formatter; end
  def backtrace_inclusion_patterns; end
  def backtrace_inclusion_patterns=(patterns); end
  def before(scope = nil, *meta, &block); end
  def bisect_runner; end
  def bisect_runner=(value); end
  def bisect_runner_class; end
  def clear_values_derived_from_example_status_persistence_file_path; end
  def color; end
  def color=(arg0); end
  def color_enabled?(output = nil); end
  def color_mode; end
  def color_mode=(arg0); end
  def command; end
  def conditionally_disable_expectations_monkey_patching; end
  def conditionally_disable_mocks_monkey_patching; end
  def configure_example(example, example_hooks); end
  def configure_expectation_framework; end
  def configure_group(group); end
  def configure_group_with(group, module_list, application_method); end
  def configure_mock_framework; end
  def default_color; end
  def default_color=(arg0); end
  def default_color?; end
  def default_formatter; end
  def default_formatter=(value); end
  def default_path; end
  def default_path=(path); end
  def default_path?; end
  def define_built_in_hooks; end
  def define_derived_metadata(*filters, &block); end
  def define_mixed_in_module(mod, filters, mod_list, config_method, &block); end
  def deprecation_stream; end
  def deprecation_stream=(value); end
  def detail_color; end
  def detail_color=(arg0); end
  def detail_color?; end
  def disable_monkey_patching!; end
  def disable_monkey_patching; end
  def disable_monkey_patching=(arg0); end
  def drb; end
  def drb=(arg0); end
  def drb?; end
  def drb_port; end
  def drb_port=(arg0); end
  def drb_port?; end
  def dry_run; end
  def dry_run=(arg0); end
  def dry_run?; end
  def error_exit_code; end
  def error_exit_code=(arg0); end
  def error_exit_code?; end
  def error_stream; end
  def error_stream=(arg0); end
  def error_stream?; end
  def example_status_persistence_file_path; end
  def example_status_persistence_file_path=(value); end
  def exclude_pattern; end
  def exclude_pattern=(value); end
  def exclusion_filter; end
  def exclusion_filter=(filter); end
  def expect_with(*frameworks); end
  def expectation_framework=(framework); end
  def expectation_frameworks; end
  def expose_current_running_example_as(method_name); end
  def expose_dsl_globally=(value); end
  def expose_dsl_globally?; end
  def extend(mod, *filters); end
  def extract_location(path); end
  def fail_fast; end
  def fail_fast=(value); end
  def fail_if_no_examples; end
  def fail_if_no_examples=(arg0); end
  def fail_if_no_examples?; end
  def failure_color; end
  def failure_color=(arg0); end
  def failure_color?; end
  def failure_exit_code; end
  def failure_exit_code=(arg0); end
  def failure_exit_code?; end
  def file_glob_from(path, pattern); end
  def files_or_directories_to_run=(*files); end
  def files_to_run; end
  def files_to_run=(arg0); end
  def filter; end
  def filter=(filter); end
  def filter_gems_from_backtrace(*gem_names); end
  def filter_manager; end
  def filter_manager=(arg0); end
  def filter_run(*args); end
  def filter_run_excluding(*args); end
  def filter_run_including(*args); end
  def filter_run_when_matching(*args); end
  def fixed_color; end
  def fixed_color=(arg0); end
  def fixed_color?; end
  def force(hash); end
  def format_docstrings(&block); end
  def format_docstrings_block; end
  def formatter=(formatter, output = nil); end
  def formatter_loader; end
  def formatters; end
  def full_backtrace=(true_or_false); end
  def full_backtrace?; end
  def full_description; end
  def full_description=(description); end
  def gather_directories(path); end
  def get_files_to_run(paths); end
  def get_matching_files(path, pattern); end
  def handle_suite_hook(scope, meta); end
  def hooks; end
  def in_project_source_dir_regex; end
  def include(mod, *filters); end
  def include_context(shared_group_name, *filters); end
  def inclusion_filter; end
  def inclusion_filter=(filter); end
  def initialize; end
  def last_run_statuses; end
  def libs; end
  def libs=(libs); end
  def load_file_handling_errors(method, file); end
  def load_spec_files; end
  def loaded_spec_files; end
  def max_displayed_failure_line_count; end
  def max_displayed_failure_line_count=(arg0); end
  def max_displayed_failure_line_count?; end
  def metadata_applies_to_group?(meta, group); end
  def mock_framework; end
  def mock_framework=(framework); end
  def mock_with(framework); end
  def on_example_group_definition(&block); end
  def on_example_group_definition_callbacks; end
  def on_existing_matching_groups(meta); end
  def only_failures; end
  def only_failures?; end
  def only_failures_but_not_configured?; end
  def order=(*args, &block); end
  def ordering_manager; end
  def ordering_registry(*args, &block); end
  def output_stream; end
  def output_stream=(value); end
  def output_to_tty?(output = nil); end
  def output_wrapper; end
  def paths_to_check(paths); end
  def pattern; end
  def pattern=(value); end
  def pattern_might_load_specs_from_vendored_dirs?; end
  def pending_color; end
  def pending_color=(arg0); end
  def pending_color?; end
  def prepend(mod, *filters); end
  def prepend_after(scope = nil, *meta, &block); end
  def prepend_before(scope = nil, *meta, &block); end
  def profile_examples; end
  def profile_examples=(arg0); end
  def profile_examples?; end
  def project_source_dirs; end
  def project_source_dirs=(arg0); end
  def project_source_dirs?; end
  def raise_errors_for_deprecations!; end
  def raise_on_warning=(value); end
  def register_ordering(*args, &block); end
  def reporter; end
  def requires; end
  def requires=(paths); end
  def reset; end
  def reset_filters; end
  def reset_reporter; end
  def rspec_expectations_loaded?; end
  def rspec_mocks_loaded?; end
  def run_all_when_everything_filtered; end
  def run_all_when_everything_filtered=(arg0); end
  def run_all_when_everything_filtered?; end
  def run_suite_hooks(hook_description, hooks); end
  def safe_extend(mod, host); end
  def safe_include(mod, host); end
  def safe_prepend(mod, host); end
  def seed(*args, &block); end
  def seed=(*args, &block); end
  def seed_used?(*args, &block); end
  def self.add_read_only_setting(name, opts = nil); end
  def self.add_setting(name, opts = nil); end
  def self.define_alias(name, alias_name); end
  def self.define_predicate(name); end
  def self.define_reader(name); end
  def self.delegate_to_ordering_manager(*methods); end
  def shared_context_metadata_behavior; end
  def shared_context_metadata_behavior=(value); end
  def silence_filter_announcements; end
  def silence_filter_announcements=(arg0); end
  def silence_filter_announcements?; end
  def spec_files_with_failures; end
  def start_time; end
  def start_time=(arg0); end
  def start_time?; end
  def static_config_filter_manager; end
  def static_config_filter_manager=(arg0); end
  def success_color; end
  def success_color=(arg0); end
  def success_color?; end
  def threadsafe; end
  def threadsafe=(arg0); end
  def threadsafe?; end
  def treat_symbols_as_metadata_keys_with_true_values=(_value); end
  def tty; end
  def tty=(arg0); end
  def tty?; end
  def update_pattern_attr(name, value); end
  def value_for(key); end
  def warnings=(value); end
  def warnings?; end
  def when_first_matching_example_defined(*filters); end
  def with_suite_hooks; end
  def world; end
  def world=(arg0); end
  include RSpec::Core::Configuration::Readers
  include RSpec::Core::Hooks
end
module RSpec::Core::Configuration::Readers
  def default_color; end
  def default_path; end
  def deprecation_stream; end
  def detail_color; end
  def drb; end
  def drb_port; end
  def dry_run; end
  def error_exit_code; end
  def error_stream; end
  def example_status_persistence_file_path; end
  def exclude_pattern; end
  def fail_fast; end
  def fail_if_no_examples; end
  def failure_color; end
  def failure_exit_code; end
  def fixed_color; end
  def libs; end
  def max_displayed_failure_line_count; end
  def only_failures; end
  def output_stream; end
  def pattern; end
  def pending_color; end
  def project_source_dirs; end
  def requires; end
  def run_all_when_everything_filtered; end
  def shared_context_metadata_behavior; end
  def silence_filter_announcements; end
  def start_time; end
  def success_color; end
  def threadsafe; end
  def tty; end
end
class RSpec::Core::Configuration::MustBeConfiguredBeforeExampleGroupsError < StandardError
end
class RSpec::Core::Configuration::DeprecationReporterBuffer
  def deprecation(*args); end
  def initialize; end
  def play_onto(reporter); end
end
module RSpec::Core::Configuration::ExposeCurrentExample
end
class RSpec::Core::Parser
  def add_tag_filter(options, filter_type, tag_name, value = nil); end
  def configure_only_failures(options); end
  def initialize(original_args); end
  def original_args; end
  def parse(source = nil); end
  def parser(options); end
  def self.parse(args, source = nil); end
  def set_fail_fast(options, value); end
end
class RSpec::Core::ConfigurationOptions
  def args; end
  def args_from_options_file(path); end
  def command_line_options; end
  def configure(config); end
  def configure_filter_manager(filter_manager); end
  def custom_options; end
  def custom_options_file; end
  def env_options; end
  def file_options; end
  def force?(key); end
  def global_options; end
  def global_options_file; end
  def home_options_file_path; end
  def initialize(args); end
  def load_formatters_into(config); end
  def local_options; end
  def local_options_file; end
  def options; end
  def options_file_as_erb_string(path); end
  def options_from(path); end
  def order(keys); end
  def organize_options; end
  def parse_args_ignoring_files_or_dirs_to_run(args, source); end
  def process_options_into(config); end
  def project_options; end
  def project_options_file; end
  def resolve_xdg_config_home; end
  def xdg_options_file_if_exists; end
  def xdg_options_file_path; end
end
class RSpec::Core::Runner
  def configuration; end
  def configure(err, out); end
  def exit_code(examples_passed = nil); end
  def initialize(options, configuration = nil, world = nil); end
  def options; end
  def persist_example_statuses; end
  def run(err, out); end
  def run_specs(example_groups); end
  def self.autorun; end
  def self.autorun_disabled?; end
  def self.disable_autorun!; end
  def self.handle_interrupt; end
  def self.installed_at_exit?; end
  def self.invoke; end
  def self.perform_at_exit; end
  def self.run(args, err = nil, out = nil); end
  def self.running_in_drb?; end
  def self.trap_interrupt; end
  def setup(err, out); end
  def world; end
end
module RSpec::Core::Invocations
end
class RSpec::Core::Invocations::InitializeProject
  def call(*_args); end
end
class RSpec::Core::Invocations::DRbWithFallback
  def call(options, err, out); end
end
class RSpec::Core::Invocations::Bisect
  def bisect_formatter_klass_for(argument); end
  def call(options, err, out); end
end
class RSpec::Core::Invocations::PrintVersion
  def call(_options, _err, out); end
end
class RSpec::Core::Invocations::PrintHelp < Struct
  def call(_options, _err, out); end
  def hidden_options; end
  def hidden_options=(_); end
  def parser; end
  def parser=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RSpec::Core::Example
  def assign_generated_description; end
  def clock; end
  def clock=(arg0); end
  def description; end
  def display_exception; end
  def display_exception=(ex); end
  def duplicate_with(metadata_overrides = nil); end
  def example_group; end
  def example_group_instance; end
  def exception; end
  def execution_result; end
  def fail_with_exception(reporter, exception); end
  def file_path; end
  def finish(reporter); end
  def full_description; end
  def generate_description; end
  def hooks; end
  def id; end
  def initialize(example_group_class, description, user_metadata, example_block = nil); end
  def inspect; end
  def inspect_output; end
  def instance_exec(*args, &block); end
  def location; end
  def location_description; end
  def location_rerun_argument; end
  def metadata; end
  def mocks_need_verification?; end
  def pending; end
  def pending?; end
  def record_finished(status, reporter); end
  def reporter; end
  def rerun_argument; end
  def run(example_group_instance, reporter); end
  def run_after_example; end
  def run_before_example; end
  def self.delegate_to_metadata(key); end
  def self.parse_id(id); end
  def set_aggregate_failures_exception(exception); end
  def set_exception(exception); end
  def skip; end
  def skip_with_exception(reporter, exception); end
  def skipped?; end
  def start(reporter); end
  def to_s; end
  def update_inherited_metadata(updates); end
  def verify_mocks; end
  def with_around_and_singleton_context_hooks; end
  def with_around_example_hooks; end
end
class RSpec::Core::Example::Procsy
  def <<(*a, &b); end
  def ===(*a, &b); end
  def >>(*a, &b); end
  def [](*a, &b); end
  def arity(*a, &b); end
  def binding(*a, &b); end
  def call(*args, &block); end
  def clock(*a, &b); end
  def clock=(*a, &b); end
  def clone(*a, &b); end
  def curry(*a, &b); end
  def description(*a, &b); end
  def dup(*a, &b); end
  def duplicate_with(*a, &b); end
  def example; end
  def example_group(*a, &b); end
  def example_group_instance(*a, &b); end
  def exception(*a, &b); end
  def executed?; end
  def execution_result(*a, &b); end
  def file_path(*a, &b); end
  def full_description(*a, &b); end
  def hash(*a, &b); end
  def id(*a, &b); end
  def initialize(example, &block); end
  def inspect; end
  def inspect_output(*a, &b); end
  def lambda?(*a, &b); end
  def location(*a, &b); end
  def location_rerun_argument(*a, &b); end
  def metadata(*a, &b); end
  def parameters(*a, &b); end
  def pending(*a, &b); end
  def pending?(*a, &b); end
  def reporter(*a, &b); end
  def rerun_argument(*a, &b); end
  def run(*args, &block); end
  def skip(*a, &b); end
  def skipped?(*a, &b); end
  def source_location(*a, &b); end
  def to_proc; end
  def update_inherited_metadata(*a, &b); end
  def wrap(&block); end
  def yield(*a, &b); end
end
class RSpec::Core::Example::ExecutionResult
  def calculate_run_time(finished_at); end
  def ensure_timing_set(clock); end
  def example_skipped?; end
  def exception; end
  def exception=(arg0); end
  def finished_at; end
  def finished_at=(arg0); end
  def get_value(name); end
  def hash_for_delegation; end
  def issue_deprecation(_method_name, *_args); end
  def pending_exception; end
  def pending_exception=(arg0); end
  def pending_fixed; end
  def pending_fixed=(arg0); end
  def pending_fixed?; end
  def pending_message; end
  def pending_message=(arg0); end
  def record_finished(status, finished_at); end
  def run_time; end
  def run_time=(arg0); end
  def set_value(name, value); end
  def started_at; end
  def started_at=(arg0); end
  def status; end
  def status=(arg0); end
  extend RSpec::Core::HashImitatable::ClassMethods
  include RSpec::Core::HashImitatable
end
class RSpec::Core::SuiteHookContext < RSpec::Core::Example
  def initialize(hook_description, reporter); end
  def set_exception(exception); end
end
class RSpec::Core::SharedExampleGroupModule < Module
  def definition; end
  def include_in(klass, inclusion_line, args, customization_block); end
  def included(klass); end
  def initialize(description, definition, metadata); end
  def inspect; end
  def to_s; end
end
module RSpec::Core::SharedExampleGroup
  def shared_context(name, *args, &block); end
  def shared_examples(name, *args, &block); end
  def shared_examples_for(name, *args, &block); end
end
module RSpec::Core::SharedExampleGroup::TopLevelDSL
  def self.definitions; end
  def self.expose_globally!; end
  def self.exposed_globally?; end
  def self.remove_globally!; end
end
class RSpec::Core::SharedExampleGroup::Registry
  def add(context, name, *metadata_args, &block); end
  def ensure_block_has_source_location(_block); end
  def find(lookup_contexts, name); end
  def formatted_location(block); end
  def legacy_add(context, name, *metadata_args, &block); end
  def shared_example_groups; end
  def valid_name?(candidate); end
  def warn_if_key_taken(context, key, new_block); end
end
class RSpec::Core::ExampleGroup
  def described_class; end
  def initialize(inspect_output = nil); end
  def inspect; end
  def method_missing(name, *args); end
  def self.add_example(example); end
  def self.before_context_ivars; end
  def self.children; end
  def self.context(*args, &example_group_block); end
  def self.currently_executing_a_context_hook?; end
  def self.declaration_locations; end
  def self.define_example_group_method(name, metadata = nil); end
  def self.define_example_method(name, extra_options = nil); end
  def self.define_nested_shared_group_method(new_name, report_label = nil); end
  def self.delegate_to_metadata(*names); end
  def self.descendant_filtered_examples; end
  def self.descendants; end
  def self.describe(*args, &example_group_block); end
  def self.described_class; end
  def self.description; end
  def self.each_instance_variable_for_example(group); end
  def self.ensure_example_groups_are_configured; end
  def self.example(*all_args, &block); end
  def self.example_group(*args, &example_group_block); end
  def self.examples; end
  def self.fcontext(*args, &example_group_block); end
  def self.fdescribe(*args, &example_group_block); end
  def self.fexample(*all_args, &block); end
  def self.file_path; end
  def self.filtered_examples; end
  def self.find_and_eval_shared(label, name, inclusion_location, *args, &customization_block); end
  def self.fit(*all_args, &block); end
  def self.focus(*all_args, &block); end
  def self.for_filtered_examples(reporter, &block); end
  def self.fspecify(*all_args, &block); end
  def self.id; end
  def self.idempotently_define_singleton_method(name, &definition); end
  def self.include_context(name, *args, &block); end
  def self.include_examples(name, *args, &block); end
  def self.it(*all_args, &block); end
  def self.it_behaves_like(name, *args, &customization_block); end
  def self.it_should_behave_like(name, *args, &customization_block); end
  def self.location; end
  def self.metadata; end
  def self.method_missing(name, *args); end
  def self.next_runnable_index_for(file); end
  def self.ordering_strategy; end
  def self.parent_groups; end
  def self.pending(*all_args, &block); end
  def self.remove_example(example); end
  def self.reset_memoized; end
  def self.run(reporter = nil); end
  def self.run_after_context_hooks(example_group_instance); end
  def self.run_before_context_hooks(example_group_instance); end
  def self.run_examples(reporter); end
  def self.set_it_up(description, args, registration_collection, &example_group_block); end
  def self.set_ivars(instance, ivars); end
  def self.skip(*all_args, &block); end
  def self.specify(*all_args, &block); end
  def self.store_before_context_ivars(example_group_instance); end
  def self.subclass(parent, description, args, registration_collection, &example_group_block); end
  def self.superclass_before_context_ivars; end
  def self.superclass_metadata; end
  def self.top_level?; end
  def self.top_level_description; end
  def self.traverse_tree_until(&block); end
  def self.update_inherited_metadata(updates); end
  def self.with_replaced_metadata(meta); end
  def self.xcontext(*args, &example_group_block); end
  def self.xdescribe(*args, &example_group_block); end
  def self.xexample(*all_args, &block); end
  def self.xit(*all_args, &block); end
  def self.xspecify(*all_args, &block); end
  extend RSpec::Core::Hooks
  extend RSpec::Core::MemoizedHelpers::ClassMethods
  extend RSpec::Core::SharedExampleGroup
  include RSpec::Core::MemoizedHelpers
  include RSpec::Core::Pending
end
class RSpec::Core::ExampleGroup::WrongScopeError < NoMethodError
end
class RSpec::Core::AnonymousExampleGroup < RSpec::Core::ExampleGroup
  def self.metadata; end
end
class RSpec::Core::SharedExampleGroupInclusionStackFrame
  def description; end
  def formatted_inclusion_location; end
  def inclusion_location; end
  def initialize(shared_group_name, inclusion_location); end
  def self.current_backtrace; end
  def self.shared_example_group_inclusions; end
  def self.with_frame(name, location); end
  def shared_group_name; end
end
module RSpec::ExampleGroups
  def self.assign_const(group); end
  def self.base_name_for(group); end
  def self.constant_scope_for(group); end
  def self.disambiguate(name, const_scope); end
  def self.remove_all_constants; end
  extend RSpec::Support::RecursiveConstMethods
end
module RSpec::Support
  def self.require_rspec_core(f); end
end
class RSpec::Core::Time
  def self.now; end
end
class Module
end
module RSpec::Core::SharedContext
  def __shared_context_recordings; end
  def after(*args, &block); end
  def append_after(*args, &block); end
  def append_before(*args, &block); end
  def around(*args, &block); end
  def before(*args, &block); end
  def context(*args, &block); end
  def describe(*args, &block); end
  def hooks(*args, &block); end
  def included(group); end
  def let!(*args, &block); end
  def let(*args, &block); end
  def prepend_after(*args, &block); end
  def prepend_before(*args, &block); end
  def self.record(methods); end
  def subject!(*args, &block); end
  def subject(*args, &block); end
end
class RSpec::Core::SharedContext::Recording < Struct
  def args; end
  def args=(_); end
  def block; end
  def block=(_); end
  def method_name; end
  def method_name=(_); end
  def playback_onto(group); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RSpec::Core::ExampleStatusPersister
  def dump_statuses(unparsed_previous_runs); end
  def initialize(examples, file_name); end
  def persist; end
  def self.load_from(file_name); end
  def self.persist(examples, file_name); end
  def statuses_from_this_run; end
end
class RSpec::Core::ExampleStatusMerger
  def delete_previous_examples_that_no_longer_exist; end
  def example_must_no_longer_exist?(ex_id); end
  def hash_from(example_list); end
  def initialize(this_run, from_previous_runs); end
  def loaded_spec_files; end
  def merge; end
  def self.merge(this_run, from_previous_runs); end
  def sort_value_from(example); end
  def spec_file_from(ex_id); end
end
class RSpec::Core::ExampleStatusDumper
  def column_widths; end
  def dump; end
  def formatted_header_rows; end
  def formatted_row_from(row_values); end
  def formatted_value_rows; end
  def headers; end
  def initialize(examples); end
  def rows; end
  def self.dump(examples); end
end
class RSpec::Core::ExampleStatusParser
  def headers; end
  def initialize(string); end
  def parse; end
  def parse_row(line); end
  def self.parse(string); end
  def split_line(line); end
end
class RSpec::Core::Profiler
  def example_group_finished(notification); end
  def example_group_started(notification); end
  def example_groups; end
  def example_started(notification); end
  def initialize; end
end
class RSpec::Core::DidYouMean
  def call; end
  def formats(probables); end
  def initialize(relative_file_name); end
  def red_font(mytext); end
  def relative_file_name; end
  def top_and_tail(rspec_format); end
end
class RSpec::Core::Formatters::BaseFormatter
  def close(_notification); end
  def example_group; end
  def example_group=(arg0); end
  def example_group_started(notification); end
  def initialize(output); end
  def output; end
  def output_supports_sync; end
  def restore_sync_output; end
  def start(notification); end
  def start_sync_output; end
end
class RSpec::Core::Formatters::BaseTextFormatter < RSpec::Core::Formatters::BaseFormatter
  def close(_notification); end
  def dump_failures(notification); end
  def dump_pending(notification); end
  def dump_summary(summary); end
  def message(notification); end
  def seed(notification); end
end
class RSpec::Core::Formatters::DocumentationFormatter < RSpec::Core::Formatters::BaseTextFormatter
  def current_indentation(offset = nil); end
  def example_failed(failure); end
  def example_group_finished(_notification); end
  def example_group_started(notification); end
  def example_passed(passed); end
  def example_pending(pending); end
  def example_started(_notification); end
  def failure_output(example); end
  def flush_messages; end
  def initialize(output); end
  def message(notification); end
  def next_failure_index; end
  def passed_output(example); end
  def pending_output(example, message); end
end
class RSpec::Core::Formatters::HtmlPrinter
  def flush; end
  def indentation_style(number_of_parents); end
  def initialize(output); end
  def make_example_group_header_red(group_id); end
  def make_example_group_header_yellow(group_id); end
  def make_header_red; end
  def make_header_yellow; end
  def move_progress(percent_done); end
  def print_example_failed(pending_fixed, description, run_time, failure_id, exception, extra_content); end
  def print_example_group_end; end
  def print_example_group_start(group_id, description, number_of_parents); end
  def print_example_passed(description, run_time); end
  def print_example_pending(description, pending_message); end
  def print_html_start; end
  def print_summary(duration, example_count, failure_count, pending_count); end
  include ERB::Util
end
class RSpec::Core::Formatters::HtmlFormatter < RSpec::Core::Formatters::BaseFormatter
  def dump_summary(summary); end
  def example_failed(failure); end
  def example_group_number; end
  def example_group_started(notification); end
  def example_number; end
  def example_passed(passed); end
  def example_pending(pending); end
  def example_started(_notification); end
  def extra_failure_content(failure); end
  def initialize(output); end
  def percent_done; end
  def start(notification); end
  def start_dump(_notification); end
end
class RSpec::Core::Formatters::FallbackMessageFormatter
  def initialize(output); end
  def message(notification); end
  def output; end
end
class RSpec::Core::Formatters::ProgressFormatter < RSpec::Core::Formatters::BaseTextFormatter
  def example_failed(_notification); end
  def example_passed(_notification); end
  def example_pending(_notification); end
  def start_dump(_notification); end
end
class RSpec::Core::Formatters::ProfileFormatter
  def bold(text); end
  def dump_profile(profile); end
  def dump_profile_slowest_example_groups(profile); end
  def dump_profile_slowest_examples(profile); end
  def format_caller(caller_info); end
  def initialize(output); end
  def output; end
end
class RSpec::Core::Formatters::JsonFormatter < RSpec::Core::Formatters::BaseFormatter
  def close(_notification); end
  def dump_profile(profile); end
  def dump_profile_slowest_example_groups(profile); end
  def dump_profile_slowest_examples(profile); end
  def dump_summary(summary); end
  def format_example(example); end
  def initialize(output); end
  def message(notification); end
  def output_hash; end
  def seed(notification); end
  def stop(notification); end
end
module RSpec::Core::Bisect
end
class RSpec::Core::Bisect::ExampleSetDescriptor < Struct
  def all_example_ids; end
  def all_example_ids=(_); end
  def failed_example_ids; end
  def failed_example_ids=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class RSpec::Core::Bisect::BisectFailedError < StandardError
  def self.for_failed_spec_run(spec_output); end
end
class RSpec::Core::Bisect::Notifier
  def initialize(formatter); end
  def publish(event, *args); end
end
class RSpec::Core::Bisect::Channel
  def close; end
  def initialize; end
  def receive; end
  def send(message); end
end
class RSpec::Core::Formatters::BaseBisectFormatter
  def example_failed(notification); end
  def example_finished(notification); end
  def initialize(expected_failures); end
  def self.inherited(formatter); end
  def start_dump(_notification); end
end
class RSpec::Core::Formatters::BisectDRbFormatter < RSpec::Core::Formatters::BaseBisectFormatter
  def initialize(_output); end
  def notify_results(results); end
end
class RSpec::Core::Formatters::FailureListFormatter < RSpec::Core::Formatters::BaseFormatter
  def dump_profile(_profile); end
  def example_failed(failure); end
  def message(_message); end
end
module RSpec::Core::MockingAdapters
end
module RSpec::Core::MockingAdapters::RSpec
  def self.configuration; end
  def self.framework_name; end
  def setup_mocks_for_rspec; end
  def teardown_mocks_for_rspec; end
  def verify_mocks_for_rspec; end
  include RSpec::Mocks::ExampleMethods
  include RSpec::Mocks::ExampleMethods::ExpectHost
end
class RSpec::Core::RakeTask < ::Rake::TaskLib
  include ::Rake::DSL
  include RSpec::Core::ShellEscape
  def initialize(*args, &task_block); end
end
