# typed: strong

module ActionView
  class ActionViewError < StandardError; end
  class EncodingError < StandardError; end
  class WrongEncodingError < EncodingError; end

  class MissingTemplate < ActionViewError
    sig { returns(String) }
    def path; end
  end

  class Template
    class Error < ActionViewError; end
  end

  TemplateError = T.type_alias {Template::Error}

  class SyntaxErrorInTemplate < Template::Error; end
end

class ActionView::Base
  include(::ActionView::Context)
  include(::ERB::Util)
  include(::ActionView::Helpers::CaptureHelper)
  include(::ActionView::Helpers::ControllerHelper)
  include(::ActionView::Helpers::CspHelper)
  include(::ActionView::Helpers::CsrfHelper)
  include(::ActionView::Helpers::DateHelper)
  include(::ActionView::Helpers::OutputSafetyHelper)
  include(::ActionView::Helpers::TagHelper)
  include(::ActiveSupport::Benchmarkable)
  include(::ActionView::Helpers::ActiveModelHelper)
  include(::ActionView::Helpers::AssetUrlHelper)
  include(::ActionView::Helpers::AssetTagHelper)
  include(::ActionView::Helpers::UrlHelper)
  include(::ActionView::Helpers::AtomFeedHelper)
  include(::ActionView::Helpers::CacheHelper)
  include(::ActionView::Helpers::SanitizeHelper)
  include(::ActionView::Helpers::DebugHelper)
  include(::ActionView::Helpers::TextHelper)
  include(::ActionView::Helpers::FormTagHelper)
  include(::ActionView::ModelNaming)
  include(::ActionView::RecordIdentifier)
  include(::ActionView::Helpers::FormHelper)
  include(::ActionView::Helpers::TranslationHelper)
  include(::ActionView::Helpers::FormOptionsHelper)
  include(::ActionView::Helpers::JavaScriptHelper)
  include(::ActionView::Helpers::NumberHelper)
  include(::ActionView::Helpers::RenderingHelper)
  include(::ActionView::Helpers)
  extend(::ActionView::Helpers::UrlHelper::ClassMethods)
  extend(::ActionView::Helpers::SanitizeHelper::ClassMethods)

  def initialize(lookup_context = T.unsafe(nil), assigns = T.unsafe(nil), controller = T.unsafe(nil), formats = T.unsafe(nil)); end

  def _routes; end
  def _routes=(val); end
  def _routes?; end
  def _run(method, template, locals, buffer, &block); end
  def assign(new_assigns); end
  def assigns; end
  def assigns=(_); end
  def automatically_disable_submit_tag; end
  def automatically_disable_submit_tag=(obj); end
  def compiled_method_container; end
  def config; end
  def config=(_); end
  def debug_missing_translation; end
  def debug_missing_translation=(obj); end
  def default_formats; end
  def default_formats=(obj); end
  def field_error_proc; end
  def field_error_proc=(obj); end
  def formats(*_, &_); end
  def formats=(arg); end
  def in_rendering_context(options); end
  def locale(*_, &_); end
  def locale=(arg); end
  def logger; end
  def logger=(val); end
  def logger?; end
  def lookup_context; end
  def prefix_partial_path_with_controller_namespace; end
  def prefix_partial_path_with_controller_namespace=(obj); end
  def raise_on_missing_translations; end
  def raise_on_missing_translations=(obj); end
  def streaming_completion_on_exception; end
  def streaming_completion_on_exception=(obj); end
  def view_paths(*_, &_); end
  def view_paths=(arg); end
  def view_renderer; end

  class << self
    def _routes; end
    def _routes=(val); end
    def _routes?; end
    def automatically_disable_submit_tag; end
    def automatically_disable_submit_tag=(obj); end
    def build_lookup_context(context); end
    def cache_template_loading; end
    def cache_template_loading=(value); end
    def changed?(other); end
    def debug_missing_translation; end
    def debug_missing_translation=(obj); end
    def default_form_builder; end
    def default_form_builder=(obj); end
    def default_formats; end
    def default_formats=(obj); end
    def empty; end
    def erb_trim_mode=(arg); end
    def field_error_proc; end
    def field_error_proc=(obj); end
    def logger; end
    def logger=(val); end
    def logger?; end
    def prefix_partial_path_with_controller_namespace; end
    def prefix_partial_path_with_controller_namespace=(obj); end
    def raise_on_missing_translations; end
    def raise_on_missing_translations=(obj); end
    def streaming_completion_on_exception; end
    def streaming_completion_on_exception=(obj); end
    def with_context(context, assigns = T.unsafe(nil), controller = T.unsafe(nil)); end
    def with_empty_template_cache; end
    def with_view_paths(view_paths, assigns = T.unsafe(nil), controller = T.unsafe(nil)); end
    def xss_safe?; end
  end
end

ActionView::Base::NULL = T.let(T.unsafe(nil), Object)

module ActionView::Context
  def _layout_for(name = T.unsafe(nil)); end
  def _prepare_context; end
  def output_buffer; end
  def output_buffer=(_); end
  def view_flow; end
  def view_flow=(_); end
end

module ActionView::Helpers
  include(::ActiveSupport::Benchmarkable)
  include(::ActionView::Helpers::ActiveModelHelper)
  include(::ActionView::Helpers::AssetUrlHelper)
  include(::ActionView::Helpers::AtomFeedHelper)
  include(::ActionView::Helpers::CacheHelper)
  include(::ActionView::Helpers::SanitizeHelper)
  include(::ActionView::Helpers::CaptureHelper)
  include(::ActionView::Helpers::ControllerHelper)
  include(::ActionView::Helpers::CspHelper)
  include(::ActionView::Helpers::CsrfHelper)
  include(::ActionView::Helpers::DateHelper)
  include(::ActionView::Helpers::OutputSafetyHelper)
  include(::ActionView::Helpers::TagHelper)
  include(::ActionView::Helpers::DebugHelper)
  include(::ActionView::Helpers::TextHelper)
  include(::ActionView::Helpers::FormOptionsHelper)
  include(::ActionView::Helpers::JavaScriptHelper)
  include(::ActionView::Helpers::NumberHelper)
  include(::ActionView::Helpers::RenderingHelper)
  extend(::ActiveSupport::Concern)

  include(::ActionView::Helpers::TagHelper)
  include(::ActionView::Helpers::AssetTagHelper)
  include(::ActionView::Helpers::UrlHelper)
  include(::ActionView::Helpers::SanitizeHelper)
  include(::ActionView::Helpers::TextHelper)
  include(::ActionView::Helpers::FormTagHelper)
  include(::ActionView::Helpers::FormHelper)
  include(::ActionView::Helpers::TranslationHelper)

  class << self
    def eager_load!; end
  end
end

module ActionView::Helpers::ActiveModelHelper
end

module ActionView::Helpers::ActiveModelInstanceTag
  def content_tag(type, options, *_); end
  def error_message; end
  def error_wrapping(html_tag); end
  def object; end
  def tag(type, options, *_); end

  private

  def object_has_errors?; end
  def select_markup_helper?(type); end
  def tag_generate_errors?(options); end
end

module ActionView::Helpers::AssetTagHelper
  include(::ActionView::Helpers::AssetUrlHelper)
  extend(::ActiveSupport::Concern)

  include(::ActionView::Helpers::TagHelper)

  def audio_tag(*sources); end
  def auto_discovery_link_tag(type = T.unsafe(nil), url_options = T.unsafe(nil), tag_options = T.unsafe(nil)); end
  def favicon_link_tag(source = T.unsafe(nil), options = T.unsafe(nil)); end
  def image_tag(source, options = T.unsafe(nil)); end
  def javascript_include_tag(*sources); end
  def preload_link_tag(source, options = T.unsafe(nil)); end
  def stylesheet_link_tag(*sources); end
  def video_tag(*sources); end

  private

  def check_for_image_tag_errors(options); end
  def extract_dimensions(size); end
  def multiple_sources_tag_builder(type, sources); end
  def resolve_image_source(source, skip_pipeline); end
  def resolve_link_as(extname, mime_type); end
end

module ActionView::Helpers::AssetUrlHelper
  def asset_path(source, options = T.unsafe(nil)); end
  def asset_url(source, options = T.unsafe(nil)); end
  def audio_path(source, options = T.unsafe(nil)); end
  def audio_url(source, options = T.unsafe(nil)); end
  def compute_asset_extname(source, options = T.unsafe(nil)); end
  def compute_asset_host(source = T.unsafe(nil), options = T.unsafe(nil)); end
  def compute_asset_path(source, options = T.unsafe(nil)); end
  def font_path(source, options = T.unsafe(nil)); end
  def font_url(source, options = T.unsafe(nil)); end
  def image_path(source, options = T.unsafe(nil)); end
  def image_url(source, options = T.unsafe(nil)); end
  def javascript_path(source, options = T.unsafe(nil)); end
  def javascript_url(source, options = T.unsafe(nil)); end
  def path_to_asset(source, options = T.unsafe(nil)); end
  def path_to_audio(source, options = T.unsafe(nil)); end
  def path_to_font(source, options = T.unsafe(nil)); end
  def path_to_image(source, options = T.unsafe(nil)); end
  def path_to_javascript(source, options = T.unsafe(nil)); end
  def path_to_stylesheet(source, options = T.unsafe(nil)); end
  def path_to_video(source, options = T.unsafe(nil)); end
  def public_compute_asset_path(source, options = T.unsafe(nil)); end
  def stylesheet_path(source, options = T.unsafe(nil)); end
  def stylesheet_url(source, options = T.unsafe(nil)); end
  def url_to_asset(source, options = T.unsafe(nil)); end
  def url_to_audio(source, options = T.unsafe(nil)); end
  def url_to_font(source, options = T.unsafe(nil)); end
  def url_to_image(source, options = T.unsafe(nil)); end
  def url_to_javascript(source, options = T.unsafe(nil)); end
  def url_to_stylesheet(source, options = T.unsafe(nil)); end
  def url_to_video(source, options = T.unsafe(nil)); end
  def video_path(source, options = T.unsafe(nil)); end
  def video_url(source, options = T.unsafe(nil)); end
end

ActionView::Helpers::AssetUrlHelper::ASSET_EXTENSIONS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

ActionView::Helpers::AssetUrlHelper::ASSET_PUBLIC_DIRECTORIES = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

ActionView::Helpers::AssetUrlHelper::URI_REGEXP = T.let(T.unsafe(nil), Regexp)

module ActionView::Helpers::AtomFeedHelper
  def atom_feed(options = T.unsafe(nil), &block); end
end

class ActionView::Helpers::AtomFeedHelper::AtomBuilder
  def initialize(xml); end


  private

  def method_missing(method, *arguments, &block); end
  def xhtml_block?(method, arguments); end
end

ActionView::Helpers::AtomFeedHelper::AtomBuilder::XHTML_TAG_NAMES = T.let(T.unsafe(nil), T::Set[T.untyped])

class ActionView::Helpers::AtomFeedHelper::AtomFeedBuilder < ::ActionView::Helpers::AtomFeedHelper::AtomBuilder
  def initialize(xml, view, feed_options = T.unsafe(nil)); end

  def entry(record, options = T.unsafe(nil)); end
  def updated(date_or_time = T.unsafe(nil)); end
end

module ActionView::Helpers::CacheHelper
  def cache(name = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def cache_fragment_name(name = T.unsafe(nil), skip_digest: T.unsafe(nil), virtual_path: T.unsafe(nil), digest_path: T.unsafe(nil)); end
  def cache_if(condition, name = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def cache_unless(condition, name = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def digest_path_from_template(template); end

  private

  def fragment_for(name = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def fragment_name_with_digest(name, virtual_path, digest_path); end
  def read_fragment_for(name, options); end
  def write_fragment_for(name, options); end
end

module ActionView::Helpers::CaptureHelper
  def capture(*args); end
  def content_for(name, content = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def content_for?(name); end
  def provide(name, content = T.unsafe(nil), &block); end
  def with_output_buffer(buf = T.unsafe(nil)); end
end

module ActionView::Helpers::ControllerHelper
  def action_name(*_, &_); end
  def assign_controller(controller); end
  def controller; end
  def controller=(_); end
  def controller_name(*_, &_); end
  def controller_path(*_, &_); end
  def cookies(*_, &_); end
  def flash(*_, &_); end
  def headers(*_, &_); end
  def logger; end
  def params(*_, &_); end
  def request; end
  def request=(_); end
  def request_forgery_protection_token(*_, &_); end
  def respond_to?(method_name, include_private = T.unsafe(nil)); end
  def response(*_, &_); end
  def session(*_, &_); end
end

ActionView::Helpers::ControllerHelper::CONTROLLER_DELEGATES = T.let(T.unsafe(nil), T::Array[T.untyped])

module ActionView::Helpers::CspHelper
  def csp_meta_tag(**options); end
end

module ActionView::Helpers::CsrfHelper
  def csrf_meta_tag; end
  def csrf_meta_tags; end
end

module ActionView::Helpers::DateHelper
  def date_select(object_name, method, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def datetime_select(object_name, method, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def distance_of_time_in_words(from_time, to_time = T.unsafe(nil), options = T.unsafe(nil)); end
  def distance_of_time_in_words_to_now(from_time, options = T.unsafe(nil)); end
  def select_date(date = T.unsafe(nil), options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def select_datetime(datetime = T.unsafe(nil), options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def select_day(date, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def select_hour(datetime, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def select_minute(datetime, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def select_month(date, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def select_second(datetime, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def select_time(datetime = T.unsafe(nil), options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def select_year(date, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def time_ago_in_words(from_time, options = T.unsafe(nil)); end
  def time_select(object_name, method, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def time_tag(date_or_time, *args, &block); end

  private

  def normalize_distance_of_time_argument_to_time(value); end
end

ActionView::Helpers::DateHelper::MINUTES_IN_QUARTER_YEAR = T.let(T.unsafe(nil), Integer)

ActionView::Helpers::DateHelper::MINUTES_IN_THREE_QUARTERS_YEAR = T.let(T.unsafe(nil), Integer)

ActionView::Helpers::DateHelper::MINUTES_IN_YEAR = T.let(T.unsafe(nil), Integer)

class ActionView::Helpers::DateTimeSelector
  include(::ActionView::Helpers::CaptureHelper)
  include(::ActionView::Helpers::OutputSafetyHelper)
  include(::ActionView::Helpers::TagHelper)
  include(::ActionView::Helpers::UrlHelper)
  include(::ActionView::Helpers::SanitizeHelper)
  include(::ActionView::Helpers::TextHelper)
  include(::ActionView::Helpers::FormTagHelper)
  extend(::ActionView::Helpers::UrlHelper::ClassMethods)
  extend(::ActionView::Helpers::SanitizeHelper::ClassMethods)

  def initialize(datetime, options = T.unsafe(nil), html_options = T.unsafe(nil)); end

  def build_text(selected, value, options = T.unsafe(nil)); end
  def build_text_field_from_types(order); end
  def select_date; end
  def select_datetime; end
  def select_day; end
  def select_hour; end
  def select_minute; end
  def select_month; end
  def select_second; end
  def select_time; end
  def select_year; end
  def text_field_date; end
  def text_field_day; end
  def text_field_hour; end
  def text_field_minute; end
  def text_field_month; end
  def text_field_second; end
  def text_field_time; end
  def text_field_year; end

  private

  def build_hidden(type, value); end
  def build_options(selected, options = T.unsafe(nil)); end
  def build_options_and_select(type, selected, options = T.unsafe(nil)); end
  def build_select(type, select_options_as_html); end
  def build_selects_from_types(order); end
  def build_year_options(selected, options = T.unsafe(nil)); end
  def css_class_attribute(type, html_options_class, options); end
  def date_order; end
  def day; end
  def hour; end
  def input_id_from_type(type); end
  def input_name_from_type(type); end
  def min; end
  def month; end
  def month_name(number); end
  def month_names; end
  def prompt_option_tag(type, options); end
  def sec; end
  def separator(type); end
  def set_day_if_discarded; end
  def translated_date_order; end
  def translated_month_names; end
  def year; end
  def year_name(number); end
end

ActionView::Helpers::DateTimeSelector::AMPM_TRANSLATION = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

ActionView::Helpers::DateTimeSelector::DEFAULT_PREFIX = T.let(T.unsafe(nil), String)

ActionView::Helpers::DateTimeSelector::POSITION = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module ActionView::Helpers::DebugHelper
  include(::ActionView::Helpers::CaptureHelper)
  include(::ActionView::Helpers::OutputSafetyHelper)
  include(::ActionView::Helpers::TagHelper)

  def debug(object); end
end

class ActionView::Helpers::FormBuilder
  include(::ActionView::ModelNaming)

  def initialize(object_name, object, template, options); end

  def button(value = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def check_box(method, options = T.unsafe(nil), checked_value = T.unsafe(nil), unchecked_value = T.unsafe(nil)); end
  def collection_check_boxes(method, collection, value_method, text_method, options = T.unsafe(nil), html_options = T.unsafe(nil), &block); end
  def collection_radio_buttons(method, collection, value_method, text_method, options = T.unsafe(nil), html_options = T.unsafe(nil), &block); end
  def collection_select(method, collection, value_method, text_method, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def color_field(method, options = T.unsafe(nil)); end
  def date_field(method, options = T.unsafe(nil)); end
  def date_select(method, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def datetime_field(method, options = T.unsafe(nil)); end
  def datetime_local_field(method, options = T.unsafe(nil)); end
  def datetime_select(method, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def email_field(method, options = T.unsafe(nil)); end
  def emitted_hidden_id?; end
  def field_helpers; end
  def field_helpers=(val); end
  def field_helpers?; end
  def fields(scope = T.unsafe(nil), model: T.unsafe(nil), **options, &block); end
  def fields_for(record_name, record_object = T.unsafe(nil), fields_options = T.unsafe(nil), &block); end
  def file_field(method, options = T.unsafe(nil)); end
  def grouped_collection_select(method, collection, group_method, group_label_method, option_key_method, option_value_method, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def hidden_field(method, options = T.unsafe(nil)); end
  def index; end
  def label(method, text = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def month_field(method, options = T.unsafe(nil)); end
  def multipart; end
  def multipart=(multipart); end
  def multipart?; end
  def number_field(method, options = T.unsafe(nil)); end
  def object; end
  def object=(_); end
  def object_name; end
  def object_name=(_); end
  def options; end
  def options=(_); end
  def password_field(method, options = T.unsafe(nil)); end
  def phone_field(method, options = T.unsafe(nil)); end
  def radio_button(method, tag_value, options = T.unsafe(nil)); end
  def range_field(method, options = T.unsafe(nil)); end
  def search_field(method, options = T.unsafe(nil)); end
  def select(method, choices = T.unsafe(nil), options = T.unsafe(nil), html_options = T.unsafe(nil), &block); end
  def submit(value = T.unsafe(nil), options = T.unsafe(nil)); end
  def telephone_field(method, options = T.unsafe(nil)); end
  def text_area(method, options = T.unsafe(nil)); end
  def text_field(method, options = T.unsafe(nil)); end
  def time_field(method, options = T.unsafe(nil)); end
  def time_select(method, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def time_zone_select(method, priority_zones = T.unsafe(nil), options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def to_model; end
  def to_partial_path; end
  def url_field(method, options = T.unsafe(nil)); end
  def week_field(method, options = T.unsafe(nil)); end

  private

  def convert_to_legacy_options(options); end
  def fields_for_nested_model(name, object, fields_options, block); end
  def fields_for_with_nested_attributes(association_name, association, options, block); end
  def nested_attributes_association?(association_name); end
  def nested_child_index(name); end
  def objectify_options(options); end
  def submit_default_value; end

  class << self
    def _to_partial_path; end
    def field_helpers; end
    def field_helpers=(val); end
    def field_helpers?; end
  end
end

module ActionView::Helpers::FormHelper
  include(::ActionView::ModelNaming)
  include(::ActionView::RecordIdentifier)
  extend(::ActiveSupport::Concern)

  include(::ActionView::Helpers::TagHelper)
  include(::ActionView::Helpers::UrlHelper)
  include(::ActionView::Helpers::SanitizeHelper)
  include(::ActionView::Helpers::TextHelper)
  include(::ActionView::Helpers::FormTagHelper)

  def check_box(object_name, method, options = T.unsafe(nil), checked_value = T.unsafe(nil), unchecked_value = T.unsafe(nil)); end
  def color_field(object_name, method, options = T.unsafe(nil)); end
  def date_field(object_name, method, options = T.unsafe(nil)); end
  def datetime_field(object_name, method, options = T.unsafe(nil)); end
  def datetime_local_field(object_name, method, options = T.unsafe(nil)); end
  def default_form_builder; end
  def default_form_builder=(_); end
  def email_field(object_name, method, options = T.unsafe(nil)); end
  def fields(scope = T.unsafe(nil), model: T.unsafe(nil), **options, &block); end
  def fields_for(record_name, record_object = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def file_field(object_name, method, options = T.unsafe(nil)); end
  def form_for(record, options = T.unsafe(nil), &block); end
  def form_with(model: T.unsafe(nil), scope: T.unsafe(nil), url: T.unsafe(nil), format: T.unsafe(nil), **options, &block); end
  def form_with_generates_ids; end
  def form_with_generates_ids=(obj); end
  def form_with_generates_remote_forms; end
  def form_with_generates_remote_forms=(obj); end
  def hidden_field(object_name, method, options = T.unsafe(nil)); end
  def label(object_name, method, content_or_options = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def month_field(object_name, method, options = T.unsafe(nil)); end
  def number_field(object_name, method, options = T.unsafe(nil)); end
  def password_field(object_name, method, options = T.unsafe(nil)); end
  def phone_field(object_name, method, options = T.unsafe(nil)); end
  def radio_button(object_name, method, tag_value, options = T.unsafe(nil)); end
  def range_field(object_name, method, options = T.unsafe(nil)); end
  def search_field(object_name, method, options = T.unsafe(nil)); end
  def telephone_field(object_name, method, options = T.unsafe(nil)); end
  def text_area(object_name, method, options = T.unsafe(nil)); end
  def text_field(object_name, method, options = T.unsafe(nil)); end
  def time_field(object_name, method, options = T.unsafe(nil)); end
  def url_field(object_name, method, options = T.unsafe(nil)); end
  def week_field(object_name, method, options = T.unsafe(nil)); end

  private

  def apply_form_for_options!(record, object, options); end
  def default_form_builder_class; end
  def html_options_for_form_with(url_for_options = T.unsafe(nil), model = T.unsafe(nil), html: T.unsafe(nil), local: T.unsafe(nil), skip_enforcing_utf8: T.unsafe(nil), **options); end
  def instantiate_builder(record_name, record_object, options); end

  class << self
    def form_with_generates_ids; end
    def form_with_generates_ids=(obj); end
    def form_with_generates_remote_forms; end
    def form_with_generates_remote_forms=(obj); end
  end
end

module ActionView::Helpers::FormOptionsHelper
  include(::ActionView::Helpers::SanitizeHelper)
  include(::ActionView::Helpers::CaptureHelper)
  include(::ActionView::Helpers::OutputSafetyHelper)
  include(::ActionView::Helpers::TagHelper)
  include(::ActionView::Helpers::TextHelper)
  extend(::ActionView::Helpers::SanitizeHelper::ClassMethods)

  def collection_check_boxes(object, method, collection, value_method, text_method, options = T.unsafe(nil), html_options = T.unsafe(nil), &block); end
  def collection_radio_buttons(object, method, collection, value_method, text_method, options = T.unsafe(nil), html_options = T.unsafe(nil), &block); end
  def collection_select(object, method, collection, value_method, text_method, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def grouped_collection_select(object, method, collection, group_method, group_label_method, option_key_method, option_value_method, options = T.unsafe(nil), html_options = T.unsafe(nil)); end
  def grouped_options_for_select(grouped_options, selected_key = T.unsafe(nil), options = T.unsafe(nil)); end
  def option_groups_from_collection_for_select(collection, group_method, group_label_method, option_key_method, option_value_method, selected_key = T.unsafe(nil)); end
  def options_for_select(container, selected = T.unsafe(nil)); end
  def options_from_collection_for_select(collection, value_method, text_method, selected = T.unsafe(nil)); end
  def select(object, method, choices = T.unsafe(nil), options = T.unsafe(nil), html_options = T.unsafe(nil), &block); end
  def time_zone_options_for_select(selected = T.unsafe(nil), priority_zones = T.unsafe(nil), model = T.unsafe(nil)); end
  def time_zone_select(object, method, priority_zones = T.unsafe(nil), options = T.unsafe(nil), html_options = T.unsafe(nil)); end

  private

  def extract_selected_and_disabled(selected); end
  def extract_values_from_collection(collection, value_method, selected); end
  def option_html_attributes(element); end
  def option_text_and_value(option); end
  def option_value_selected?(value, selected); end
  def prompt_text(prompt); end
  def public_or_deprecated_send(item, value); end
  def value_for_collection(item, value); end
end

module ActionView::Helpers::FormTagHelper
  extend(::ActiveSupport::Concern)

  include(::ActionView::Helpers::TagHelper)
  include(::ActionView::Helpers::UrlHelper)
  include(::ActionView::Helpers::SanitizeHelper)
  include(::ActionView::Helpers::TextHelper)

  def button_tag(content_or_options = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def check_box_tag(name, value = T.unsafe(nil), checked = T.unsafe(nil), options = T.unsafe(nil)); end
  def color_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def date_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def datetime_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def datetime_local_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def default_enforce_utf8; end
  def default_enforce_utf8=(obj); end
  def email_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def embed_authenticity_token_in_remote_forms; end
  def embed_authenticity_token_in_remote_forms=(obj); end
  def field_set_tag(legend = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def file_field_tag(name, options = T.unsafe(nil)); end
  def form_tag(url_for_options = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def hidden_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def image_submit_tag(source, options = T.unsafe(nil)); end
  def label_tag(name = T.unsafe(nil), content_or_options = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def month_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def number_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def password_field_tag(name = T.unsafe(nil), value = T.unsafe(nil), options = T.unsafe(nil)); end
  def phone_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def radio_button_tag(name, value, checked = T.unsafe(nil), options = T.unsafe(nil)); end
  def range_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def search_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def select_tag(name, option_tags = T.unsafe(nil), options = T.unsafe(nil)); end
  def submit_tag(value = T.unsafe(nil), options = T.unsafe(nil)); end
  def telephone_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def text_area_tag(name, content = T.unsafe(nil), options = T.unsafe(nil)); end
  def text_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def time_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def url_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end
  def utf8_enforcer_tag; end
  def week_field_tag(name, value = T.unsafe(nil), options = T.unsafe(nil)); end

  private

  def convert_direct_upload_option_to_url(options); end
  def extra_tags_for_form(html_options); end
  def form_tag_html(html_options); end
  def form_tag_with_body(html_options, content); end
  def html_options_for_form(url_for_options, options); end
  def sanitize_to_id(name); end
  def set_default_disable_with(value, tag_options); end

  class << self
    def default_enforce_utf8; end
    def default_enforce_utf8=(obj); end
    def embed_authenticity_token_in_remote_forms; end
    def embed_authenticity_token_in_remote_forms=(obj); end
  end
end

module ActionView::Helpers::JavaScriptHelper
  def escape_javascript(javascript); end
  def j(javascript); end
  def javascript_cdata_section(content); end
  def javascript_tag(content_or_options_with_block = T.unsafe(nil), html_options = T.unsafe(nil), &block); end
end

ActionView::Helpers::JavaScriptHelper::JS_ESCAPE_MAP = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module ActionView::Helpers::NumberHelper
  # These will return nil if given nil and a string otherwise. Ideally we'd be able to encode
  # that via sig overload but that's only supported for ruby stdlib.

  sig { params(number: T.untyped, options: T::Hash[T.untyped, T.untyped]).returns(T.nilable(String)) }
  def number_to_currency(number, options = T.unsafe(nil)); end

  sig { params(number: T.untyped, options: T::Hash[T.untyped, T.untyped]).returns(T.nilable(String)) }
  def number_to_human(number, options = T.unsafe(nil)); end

  sig { params(number: T.untyped, options: T::Hash[T.untyped, T.untyped]).returns(T.nilable(String)) }
  def number_to_human_size(number, options = T.unsafe(nil)); end

  sig { params(number: T.untyped, options: T::Hash[T.untyped, T.untyped]).returns(T.nilable(String)) }
  def number_to_percentage(number, options = T.unsafe(nil)); end

  sig { params(number: T.untyped, options: T::Hash[T.untyped, T.untyped]).returns(T.nilable(String)) }
  def number_to_phone(number, options = T.unsafe(nil)); end

  sig { params(number: T.untyped, options: T::Hash[T.untyped, T.untyped]).returns(T.nilable(String)) }
  def number_with_delimiter(number, options = T.unsafe(nil)); end

  sig { params(number: T.untyped, options: T::Hash[T.untyped, T.untyped]).returns(T.nilable(String)) }
  def number_with_precision(number, options = T.unsafe(nil)); end

  private

  def delegate_number_helper_method(method, number, options); end
  def escape_units(units); end
  def escape_unsafe_options(options); end
  def parse_float(number, raise_error); end
  def valid_float?(number); end
  def wrap_with_output_safety_handling(number, raise_on_invalid, &block); end
end

class ActionView::Helpers::NumberHelper::InvalidNumberError < ::StandardError
  def initialize(number); end

  def number; end
  def number=(_); end
end

module ActionView::Helpers::OutputSafetyHelper
  def raw(stringish); end
  def safe_join(array, sep = T.unsafe(nil)); end
  def to_sentence(array, options = T.unsafe(nil)); end
end

module ActionView::Helpers::RenderingHelper
  def _layout_for(*args, &block); end
  def render(options = T.unsafe(nil), locals = T.unsafe(nil), &block); end
end

module ActionView::Helpers::SanitizeHelper
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActionView::Helpers::SanitizeHelper::ClassMethods)

  def sanitize(html, options = T.unsafe(nil)); end
  def sanitize_css(style); end
  def strip_links(html); end
  def strip_tags(html); end
end

module ActionView::Helpers::SanitizeHelper::ClassMethods
  def full_sanitizer; end
  def full_sanitizer=(_); end
  def link_sanitizer; end
  def link_sanitizer=(_); end
  def safe_list_sanitizer; end
  def safe_list_sanitizer=(_); end
  def sanitized_allowed_attributes; end
  def sanitized_allowed_attributes=(attributes); end
  def sanitized_allowed_css_keywords; end
  def sanitized_allowed_css_keywords=(_); end
  def sanitized_allowed_css_properties; end
  def sanitized_allowed_css_properties=(_); end
  def sanitized_allowed_protocols; end
  def sanitized_allowed_protocols=(_); end
  def sanitized_allowed_tags; end
  def sanitized_allowed_tags=(tags); end
  def sanitized_bad_tags; end
  def sanitized_bad_tags=(_); end
  def sanitized_protocol_separator; end
  def sanitized_protocol_separator=(_); end
  def sanitized_shorthand_css_properties; end
  def sanitized_shorthand_css_properties=(_); end
  def sanitized_uri_attributes; end
  def sanitized_uri_attributes=(_); end
  def sanitizer_vendor; end

  private

  def deprecate_option(name); end
end

module ActionView::Helpers::TagHelper
  include(::ActionView::Helpers::CaptureHelper)
  include(::ActionView::Helpers::OutputSafetyHelper)
  extend(::ActiveSupport::Concern)

  def cdata_section(content); end
  def content_tag(name, content_or_options_with_block = T.unsafe(nil), options = T.unsafe(nil), escape = T.unsafe(nil), &block); end
  def escape_once(html); end
  def tag(name = T.unsafe(nil), options = T.unsafe(nil), open = T.unsafe(nil), escape = T.unsafe(nil)); end

  private

  def tag_builder; end
end

ActionView::Helpers::TagHelper::BOOLEAN_ATTRIBUTES = T.let(T.unsafe(nil), T::Array[T.untyped])

ActionView::Helpers::TagHelper::PRE_CONTENT_STRINGS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

ActionView::Helpers::TagHelper::TAG_PREFIXES = T.let(T.unsafe(nil), T::Array[T.untyped])

class ActionView::Helpers::TagHelper::TagBuilder
  include(::ActionView::Helpers::CaptureHelper)
  include(::ActionView::Helpers::OutputSafetyHelper)

  def initialize(view_context); end

  def boolean_tag_option(key); end
  def content_tag_string(name, content, options, escape = T.unsafe(nil)); end
  def tag_option(key, value, escape); end
  def tag_options(options, escape = T.unsafe(nil)); end
  def tag_string(name, content = T.unsafe(nil), escape_attributes: T.unsafe(nil), **options, &block); end

  private

  def method_missing(called, *args, **options, &block); end
  def prefix_tag_option(prefix, key, value, escape); end
  def respond_to_missing?(*args); end
end

ActionView::Helpers::TagHelper::TagBuilder::VOID_ELEMENTS = T.let(T.unsafe(nil), T::Array[T.untyped])

module ActionView::Helpers::Tags
  extend(::ActiveSupport::Autoload)
end

class ActionView::Helpers::Tags::Base
  include(::ActionView::Helpers::CaptureHelper)
  include(::ActionView::Helpers::OutputSafetyHelper)
  include(::ActionView::Helpers::TagHelper)
  include(::ActionView::Helpers::UrlHelper)
  include(::ActionView::Helpers::SanitizeHelper)
  include(::ActionView::Helpers::TextHelper)
  include(::ActionView::Helpers::FormTagHelper)
  include(::ActionView::Helpers::ActiveModelInstanceTag)
  include(::ActionView::Helpers::FormOptionsHelper)
  extend(::ActionView::Helpers::UrlHelper::ClassMethods)
  extend(::ActionView::Helpers::SanitizeHelper::ClassMethods)

  def initialize(object_name, method_name, template_object, options = T.unsafe(nil)); end

  def object; end
  def render; end

  private

  def add_default_name_and_id(options); end
  def add_default_name_and_id_for_value(tag_value, options); end
  def add_options(option_tags, options, value = T.unsafe(nil)); end
  def generate_ids?; end
  def name_and_id_index(options); end
  def placeholder_required?(html_options); end
  def retrieve_autoindex(pre_match); end
  def retrieve_object(object); end
  def sanitized_method_name; end
  def sanitized_object_name; end
  def sanitized_value(value); end
  def select_content_tag(option_tags, options, html_options); end
  def tag_id(index = T.unsafe(nil)); end
  def tag_name(multiple = T.unsafe(nil), index = T.unsafe(nil)); end
  def value; end
  def value_before_type_cast; end
  def value_came_from_user?; end
end

module ActionView::Helpers::Tags::Checkable
  def input_checked?(options); end
end

class ActionView::Helpers::Tags::CheckBox < ::ActionView::Helpers::Tags::Base
  include(::ActionView::Helpers::Tags::Checkable)

  def initialize(object_name, method_name, template_object, checked_value, unchecked_value, options); end

  def render; end

  private

  def checked?(value); end
  def hidden_field_for_checkbox(options); end
end

class ActionView::Helpers::Tags::CollectionCheckBoxes < ::ActionView::Helpers::Tags::Base
  include(::ActionView::Helpers::Tags::CollectionHelpers)

  def render(&block); end

  private

  def hidden_field_name; end
  def render_component(builder); end
end

class ActionView::Helpers::Tags::CollectionCheckBoxes::CheckBoxBuilder < ::ActionView::Helpers::Tags::CollectionHelpers::Builder
  def check_box(extra_html_options = T.unsafe(nil)); end
end

class ActionView::Helpers::Tags::CollectionRadioButtons < ::ActionView::Helpers::Tags::Base
  include(::ActionView::Helpers::Tags::CollectionHelpers)

  def render(&block); end

  private

  def render_component(builder); end
end

module ActionView::Helpers::Tags::CollectionHelpers
  def initialize(object_name, method_name, template_object, collection, value_method, text_method, options, html_options); end

  private

  def default_html_options_for_collection(item, value); end
  def hidden_field; end
  def hidden_field_name; end
  def instantiate_builder(builder_class, item, value, text, html_options); end
  def render_collection; end
  def render_collection_for(builder_class, &block); end
  def sanitize_attribute_name(value); end
end

class ActionView::Helpers::Tags::CollectionHelpers::Builder
  def initialize(template_object, object_name, method_name, object, sanitized_attribute_name, text, value, input_html_options); end

  def label(label_html_options = T.unsafe(nil), &block); end
  def object; end
  def text; end
  def value; end
end

class ActionView::Helpers::Tags::CollectionRadioButtons::RadioButtonBuilder < ::ActionView::Helpers::Tags::CollectionHelpers::Builder
  def radio_button(extra_html_options = T.unsafe(nil)); end
end

class ActionView::Helpers::Tags::CollectionSelect < ::ActionView::Helpers::Tags::Base
  def initialize(object_name, method_name, template_object, collection, value_method, text_method, options, html_options); end

  def render; end
end

class ActionView::Helpers::Tags::ColorField < ::ActionView::Helpers::Tags::TextField
  def render; end

  private

  def validate_color_string(string); end
end

class ActionView::Helpers::Tags::DateField < ::ActionView::Helpers::Tags::DatetimeField

  private

  def format_date(value); end
end

class ActionView::Helpers::Tags::DateSelect < ::ActionView::Helpers::Tags::Base
  def initialize(object_name, method_name, template_object, options, html_options); end

  def render; end

  private

  def datetime_selector(options, html_options); end
  def default_datetime(options); end
  def select_type; end

  class << self
    def select_type; end
  end
end

class ActionView::Helpers::Tags::DatetimeField < ::ActionView::Helpers::Tags::TextField
  def render; end

  private

  def datetime_value(value); end
  def format_date(value); end
end

class ActionView::Helpers::Tags::DatetimeLocalField < ::ActionView::Helpers::Tags::DatetimeField

  private

  def format_date(value); end

  class << self
    def field_type; end
  end
end

class ActionView::Helpers::Tags::DatetimeSelect < ::ActionView::Helpers::Tags::DateSelect
end

class ActionView::Helpers::Tags::EmailField < ::ActionView::Helpers::Tags::TextField
end

class ActionView::Helpers::Tags::FileField < ::ActionView::Helpers::Tags::TextField
end

class ActionView::Helpers::Tags::GroupedCollectionSelect < ::ActionView::Helpers::Tags::Base
  def initialize(object_name, method_name, template_object, collection, group_method, group_label_method, option_key_method, option_value_method, options, html_options); end

  def render; end
end

class ActionView::Helpers::Tags::HiddenField < ::ActionView::Helpers::Tags::TextField
end

class ActionView::Helpers::Tags::Label < ::ActionView::Helpers::Tags::Base
  def initialize(object_name, method_name, template_object, content_or_options = T.unsafe(nil), options = T.unsafe(nil)); end

  def render(&block); end

  private

  def render_component(builder); end
end

class ActionView::Helpers::Tags::Label::LabelBuilder
  def initialize(template_object, object_name, method_name, object, tag_value); end

  def object; end
  def translation; end
end

class ActionView::Helpers::Tags::MonthField < ::ActionView::Helpers::Tags::DatetimeField

  private

  def format_date(value); end
end

class ActionView::Helpers::Tags::NumberField < ::ActionView::Helpers::Tags::TextField
  def render; end
end

class ActionView::Helpers::Tags::PasswordField < ::ActionView::Helpers::Tags::TextField
  def render; end
end

module ActionView::Helpers::Tags::Placeholderable
  def initialize(*_); end
end

class ActionView::Helpers::Tags::RadioButton < ::ActionView::Helpers::Tags::Base
  include(::ActionView::Helpers::Tags::Checkable)

  def initialize(object_name, method_name, template_object, tag_value, options); end

  def render; end

  private

  def checked?(value); end
end

class ActionView::Helpers::Tags::RangeField < ::ActionView::Helpers::Tags::NumberField
end

class ActionView::Helpers::Tags::SearchField < ::ActionView::Helpers::Tags::TextField
  def render; end
end

class ActionView::Helpers::Tags::Select < ::ActionView::Helpers::Tags::Base
  def initialize(object_name, method_name, template_object, choices, options, html_options); end

  def render; end

  private

  def grouped_choices?; end
end

class ActionView::Helpers::Tags::TelField < ::ActionView::Helpers::Tags::TextField
end

class ActionView::Helpers::Tags::TextArea < ::ActionView::Helpers::Tags::Base
  include(::ActionView::Helpers::Tags::Placeholderable)

  def render; end
end

class ActionView::Helpers::Tags::TextField < ::ActionView::Helpers::Tags::Base
  include(::ActionView::Helpers::Tags::Placeholderable)

  def render; end

  private

  def field_type; end

  class << self
    def field_type; end
  end
end

class ActionView::Helpers::Tags::TimeField < ::ActionView::Helpers::Tags::DatetimeField

  private

  def format_date(value); end
end

class ActionView::Helpers::Tags::TimeSelect < ::ActionView::Helpers::Tags::DateSelect
end

class ActionView::Helpers::Tags::TimeZoneSelect < ::ActionView::Helpers::Tags::Base
  def initialize(object_name, method_name, template_object, priority_zones, options, html_options); end

  def render; end
end

class ActionView::Helpers::Tags::Translator
  def initialize(object, object_name, method_and_value, scope:); end

  def translate; end

  private

  def human_attribute_name; end
  def i18n_default; end
  def method_and_value; end
  def model; end
  def object_name; end
  def scope; end
end

class ActionView::Helpers::Tags::UrlField < ::ActionView::Helpers::Tags::TextField
end

class ActionView::Helpers::Tags::WeekField < ::ActionView::Helpers::Tags::DatetimeField

  private

  def format_date(value); end
end

module ActionView::Helpers::TextHelper
  include(::ActionView::Helpers::OutputSafetyHelper)
  extend(::ActiveSupport::Concern)

  include(::ActionView::Helpers::SanitizeHelper)
  include(::ActionView::Helpers::TagHelper)

  def concat(string); end
  def current_cycle(name = T.unsafe(nil)); end
  def cycle(first_value, *values); end
  def excerpt(text, phrase, options = T.unsafe(nil)); end
  def highlight(text, phrases, options = T.unsafe(nil)); end
  def pluralize(count, singular, plural_arg = T.unsafe(nil), plural: T.unsafe(nil), locale: T.unsafe(nil)); end
  def reset_cycle(name = T.unsafe(nil)); end
  def safe_concat(string); end
  def simple_format(text, html_options = T.unsafe(nil), options = T.unsafe(nil)); end
  def truncate(text, options = T.unsafe(nil), &block); end
  def word_wrap(text, line_width: T.unsafe(nil), break_sequence: T.unsafe(nil)); end

  private

  def cut_excerpt_part(part_position, part, separator, options); end
  def get_cycle(name); end
  def set_cycle(name, cycle_object); end
  def split_paragraphs(text); end
end

class ActionView::Helpers::TextHelper::Cycle
  def initialize(first_value, *values); end

  def current_value; end
  def reset; end
  def to_s; end
  def values; end

  private

  def next_index; end
  def previous_index; end
  def step_index(n); end
end

module ActionView::Helpers::TranslationHelper
  extend(::ActiveSupport::Concern)

  include(::ActionView::Helpers::TagHelper)

  def l(object, **options); end
  def localize(object, **options); end
  def t(key, **options); end
  def translate(key, **options); end

  private

  def html_safe_translation_key?(key); end
  def scope_key_by_partial(key); end
end

# Provides a set of methods for making links and getting URLs that
# depend on the routing subsystem (see ActionDispatch::Routing).
# This allows you to use the same format for links in views
# and controllers.
module ActionView::Helpers::UrlHelper
  extend(::ActiveSupport::Concern)

  include(::ActionView::Helpers::TagHelper)

  mixes_in_class_methods(::ActionView::Helpers::UrlHelper::ClassMethods)

  def button_to(name = T.unsafe(nil), options = T.unsafe(nil), html_options = T.unsafe(nil), &block); end

  # True if the current request URI was generated by the given `options`.
  #
  # #### Examples
  # Let's say we're in the `http://www.example.com/shop/checkout?order=desc&page=1` action.
  #
  # ```ruby
  # current_page?(action: 'process')
  # # => false
  #
  # current_page?(action: 'checkout')
  # # => true
  #
  # current_page?(controller: 'library', action: 'checkout')
  # # => false
  #
  # current_page?(controller: 'shop', action: 'checkout')
  # # => true
  #
  # current_page?(controller: 'shop', action: 'checkout', order: 'asc')
  # # => false
  #
  # current_page?(controller: 'shop', action: 'checkout', order: 'desc', page: '1')
  # # => true
  #
  # current_page?(controller: 'shop', action: 'checkout', order: 'desc', page: '2')
  # # => false
  #
  # current_page?('http://www.example.com/shop/checkout')
  # # => true
  #
  # current_page?('http://www.example.com/shop/checkout', check_parameters: true)
  # # => false
  #
  # current_page?('/shop/checkout')
  # # => true
  #
  # current_page?('http://www.example.com/shop/checkout?order=desc&page=1')
  # # => true
  # ```
  #
  # Let's say we're in the `http://www.example.com/products` action with method POST in case of invalid product.
  #
  # ```ruby
  # current_page?(controller: 'product', action: 'index')
  # # => false
  # ```
  #
  # We can also pass in the symbol arguments instead of strings.
  sig { params(options: T.untyped, check_parameters: T::Boolean).returns(T::Boolean) }
  def current_page?(options, check_parameters: false); end

  # Creates an anchor element of the given `name` using a URL created by the set of `options`.
  # See the valid options in the documentation for `url_for`. It's also possible to
  # pass a String instead of an options hash, which generates an anchor element that uses the
  # value of the String as the href for the link. Using a `:back` Symbol instead
  # of an options hash will generate a link to the referrer (a JavaScript back link
  # will be used in place of a referrer if none exists). If `nil` is passed as the name
  # the value of the link itself will become the name.
  #
  # #### Signatures
  #
  # ```ruby
  # link_to(body, url, html_options = {})
  #   # url is a String; you can use URL helpers like
  #   # posts_path
  #
  # link_to(body, url_options = {}, html_options = {})
  #   # url_options, except :method, is passed to url_for
  #
  # link_to(options = {}, html_options = {}) do
  #   # name
  # end
  #
  # link_to(url, html_options = {}) do
  #   # name
  # end
  # ```
  #
  # #### Options
  # * `:data` - This option can be used to add custom data attributes.
  # * `method: symbol of HTTP verb` - This modifier will dynamically
  #   create an HTML form and immediately submit the form for processing using
  #   the HTTP verb specified. Useful for having links perform a POST operation
  #   in dangerous actions like deleting a record (which search bots can follow
  #   while spidering your site). Supported verbs are `:post`, `:delete`, `:patch`, and `:put`.
  #   Note that if the user has JavaScript disabled, the request will fall back
  #   to using GET. If `href: '#'` is used and the user has JavaScript
  #   disabled clicking the link will have no effect. If you are relying on the
  #   POST behavior, you should check for it in your controller's action by using
  #   the request object's methods for `post?`, `delete?`, `patch?`, or `put?`.
  # * `remote: true` - This will allow the unobtrusive JavaScript
  #   driver to make an Ajax request to the URL in question instead of following
  #   the link. The drivers each provide mechanisms for listening for the
  #   completion of the Ajax request and performing JavaScript operations once
  #   they're complete
  #
  # #### Data attributes
  #
  # * `confirm: 'question?'` - This will allow the unobtrusive JavaScript
  #   driver to prompt with the question specified (in this case, the
  #   resulting text would be `question?`. If the user accepts, the
  #   link is processed normally, otherwise no action is taken.
  # * `:disable_with` - Value of this parameter will be used as the
  #   name for a disabled version of the link. This feature is provided by
  #   the unobtrusive JavaScript driver.
  #
  # #### Examples
  # Because it relies on `url_for`, `link_to` supports both older-style controller/action/id arguments
  # and newer RESTful routes. Current Rails style favors RESTful routes whenever possible, so base
  # your application on resources and use
  #
  # ```ruby
  # link_to "Profile", profile_path(@profile)
  # # => <a href="/profiles/1">Profile</a>
  # ```
  #
  # or the even pithier
  #
  # ```ruby
  # link_to "Profile", @profile
  # # => <a href="/profiles/1">Profile</a>
  # ```
  #
  # in place of the older more verbose, non-resource-oriented
  #
  # ```ruby
  # link_to "Profile", controller: "profiles", action: "show", id: @profile
  # # => <a href="/profiles/show/1">Profile</a>
  # ```
  #
  # Similarly,
  #
  # ```ruby
  # link_to "Profiles", profiles_path
  # # => <a href="/profiles">Profiles</a>
  # ```
  #
  # is better than
  #
  # ```ruby
  # link_to "Profiles", controller: "profiles"
  # # => <a href="/profiles">Profiles</a>
  # ```
  #
  # When name is `nil` the href is presented instead
  #
  # ```ruby
  # link_to nil, "http://example.com"
  # # => <a href="http://www.example.com">http://www.example.com</a>
  # ```
  #
  # You can use a block as well if your link target is hard to fit into the name parameter. ERB example:
  #
  # ```html
  # <%= link_to(@profile) do %>
  #   <strong><%= @profile.name %></strong> -- <span>Check it out!</span>
  # <% end %>
  # # => <a href="/profiles/1">
  #         <strong>David</strong> -- <span>Check it out!</span>
  #       </a>
  # ```
  #
  # Classes and ids for CSS are easy to produce:
  #
  # ```ruby
  # link_to "Articles", articles_path, id: "news", class: "article"
  # # => <a href="/articles" class="article" id="news">Articles</a>
  # ```
  #
  # Be careful when using the older argument style, as an extra literal hash is needed:
  #
  # ```ruby
  # link_to "Articles", { controller: "articles" }, id: "news", class: "article"
  # # => <a href="/articles" class="article" id="news">Articles</a>
  # ```
  #
  # Leaving the hash off gives the wrong link:
  #
  # ```ruby
  # link_to "WRONG!", controller: "articles", id: "news", class: "article"
  # # => <a href="/articles/index/news?class=article">WRONG!</a>
  # ```
  #
  # `link_to` can also produce links with anchors or query strings:
  #
  # ```ruby
  # link_to "Comment wall", profile_path(@profile, anchor: "wall")
  # # => <a href="/profiles/1#wall">Comment wall</a>
  #
  # link_to "Ruby on Rails search", controller: "searches", query: "ruby on rails"
  # # => <a href="/searches?query=ruby+on+rails">Ruby on Rails search</a>
  #
  # link_to "Nonsense search", searches_path(foo: "bar", baz: "quux")
  # # => <a href="/searches?foo=bar&amp;baz=quux">Nonsense search</a>
  # ```
  #
  # The only option specific to `link_to` (`:method`) is used as follows:
  #
  # ```ruby
  # link_to("Destroy", "http://www.example.com", method: :delete)
  # # => <a href='http://www.example.com' rel="nofollow" data-method="delete">Destroy</a>
  # ```
  #
  # You can also use custom data attributes using the `:data` option:
  #
  # ```ruby
  # link_to "Visit Other Site", "http://www.rubyonrails.org/", data: { confirm: "Are you sure?" }
  # # => <a href="http://www.rubyonrails.org/" data-confirm="Are you sure?">Visit Other Site</a>
  # ```
  #
  # Also you can set any link attributes such as `target`, `rel`, `type`:
  #
  # ```ruby
  # link_to "External link", "http://www.rubyonrails.org/", target: "_blank", rel: "nofollow"
  # # => <a href="http://www.rubyonrails.org/" target="_blank" rel="nofollow">External link</a>
  # ```
  sig do
    params(
      name: String,
      options: T.untyped,
      html_options: T.untyped,
      block: T.untyped
    ).returns(ActiveSupport::SafeBuffer)
  end
  def link_to(name = nil, options = nil, html_options = nil, &block); end

  # Creates a link tag of the given `name` using a URL created by the set of
  # `options` if `condition` is true, otherwise only the name is
  # returned. To specialize the default behavior, you can pass a block that
  # accepts the name or the full argument list for `link_to_unless` (see the examples
  # in `link_to_unless`).
  #
  # #### Examples
  # ```ruby
  # <%= link_to_if(@current_user.nil?, "Login", { controller: "sessions", action: "new" }) %>
  # # If the user isn't logged in...
  # # => <a href="/sessions/new/">Login</a>
  # ```
  #
  # ```ruby
  # <%=
  #    link_to_if(@current_user.nil?, "Login", { controller: "sessions", action: "new" }) do
  #      link_to(@current_user.login, { controller: "accounts", action: "show", id: @current_user })
  #    end
  # %>
  # # If the user isn't logged in...
  # # => <a href="/sessions/new/">Login</a>
  # # If they are logged in...
  # # => <a href="/accounts/show/3">my_username</a>
  # ```
  sig do
    params(
      condition: T.untyped,
      name: String,
      options: T.untyped,
      html_options: T.untyped,
      block: T.untyped
    ).returns(T.untyped)
  end
  def link_to_if(condition, name, options = {}, html_options = {}, &block); end

  def link_to_unless(condition, name, options = T.unsafe(nil), html_options = T.unsafe(nil), &block); end
  def link_to_unless_current(name, options = T.unsafe(nil), html_options = T.unsafe(nil), &block); end
  def mail_to(email_address, name = T.unsafe(nil), html_options = T.unsafe(nil), &block); end
  def url_for(options = T.unsafe(nil)); end

  protected

  def _back_url; end
  def _filtered_referrer; end

  private

  def add_method_to_attributes!(html_options, method); end
  def convert_options_to_data_attributes(options, html_options); end
  def link_to_remote_options?(options); end
  def method_not_get_method?(method); end
  def method_tag(method); end
  def to_form_params(attribute, namespace = T.unsafe(nil)); end
  def token_tag(token = T.unsafe(nil), form_options: T.unsafe(nil)); end
end

ActionView::Helpers::UrlHelper::BUTTON_TAG_METHOD_VERBS = T.let(T.unsafe(nil), T::Array[T.untyped])

module ActionView::Helpers::UrlHelper::ClassMethods
  def _url_for_modules; end
end

ActionView::Helpers::UrlHelper::STRINGIFIED_COMMON_METHODS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module ActionView::ModelNaming
  def convert_to_model(object); end
  def model_name_from_record_or_class(record_or_class); end
end

module ActionView::Layouts
  extend(::ActiveSupport::Concern)

  include(::ActionView::ViewPaths)
  include(::ActionView::Rendering)

  mixes_in_class_methods(::ActionView::Layouts::ClassMethods)

  def initialize(*_); end

  def _layout_conditions(*_, &_); end
  def _normalize_options(options); end
  def action_has_layout=(_); end
  def action_has_layout?; end

  private

  def _conditional_layout?; end
  def _default_layout(lookup_context, formats, require_layout = T.unsafe(nil)); end
  def _include_layout?(options); end
  def _layout(*_); end
  def _layout_for_option(name); end
  def _normalize_layout(value); end
end

module ActionView::Layouts::ClassMethods
  def _write_layout_method; end
  def inherited(klass); end
  def layout(layout, conditions = T.unsafe(nil)); end

  private

  def _implied_layout_name; end
end

module ActionView::RecordIdentifier
  include(::ActionView::ModelNaming)
  extend(::ActionView::RecordIdentifier)
  extend(::ActionView::ModelNaming)

  def dom_class(record_or_class, prefix = T.unsafe(nil)); end
  def dom_id(record, prefix = T.unsafe(nil)); end

  private

  def record_key_for_dom_id(record); end
end

ActionView::RecordIdentifier::JOIN = T.let(T.unsafe(nil), String)

ActionView::RecordIdentifier::NEW = T.let(T.unsafe(nil), String)

module ActionView::Rendering
  extend T::Helpers

  mixes_in_class_methods(ActionView::Rendering::ClassMethods)
end

module ActionView::Rendering::ClassMethods
end

module ActionView::ViewPaths
  extend T::Helpers

  mixes_in_class_methods(ActionView::ViewPaths::ClassMethods)
end

module ActionView::ViewPaths::ClassMethods
end
