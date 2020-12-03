# typed: strong

module Annotate
  class << self
    def bootstrap_rake; end
    def eager_load(options); end
    def load_tasks; end
    def set_defaults(options = T.unsafe(nil)); end
    def setup_options(options = T.unsafe(nil)); end
    def version; end

    private

    def load_requires(options); end
  end
end

module Annotate::Constants
end

Annotate::Constants::ALL_ANNOTATE_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

Annotate::Constants::FLAG_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

Annotate::Constants::OTHER_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

Annotate::Constants::PATH_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

Annotate::Constants::POSITION_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

Annotate::Constants::TRUE_RE = T.let(T.unsafe(nil), Regexp)

class Annotate::Helpers
  class << self
    def fallback(*args); end
    def include_models?; end
    def include_routes?; end
    def reset_options(options); end
    def skip_on_migration?; end
    def true?(val); end
  end
end

module AnnotateModels
  class << self
    def annotate(klass, file, header, options = T.unsafe(nil)); end
    def annotate_model_file(annotated, file, header, options); end
    def annotate_one_file(file_name, info_block, position, options = T.unsafe(nil)); end
    def annotate_pattern(options = T.unsafe(nil)); end
    def classified_sort(cols); end
    def do_annotations(options = T.unsafe(nil)); end
    def expand_glob_into_files(glob); end
    def factory_files(root_directory); end
    def files_by_pattern(root_directory, pattern_type, options); end
    def final_index_string(index, max_size); end
    def final_index_string_in_markdown(index); end
    def fixture_files(root_directory); end
    def get_col_type(col); end
    def get_foreign_key_info(klass, options = T.unsafe(nil)); end
    def get_index_info(klass, options = T.unsafe(nil)); end
    def get_loaded_model(model_path, file); end
    def get_loaded_model_by_path(model_path); end
    def get_model_class(file); end
    def get_model_files(options); end
    def get_patterns(options, pattern_types = T.unsafe(nil)); end
    def get_schema_footer_text(_klass, options = T.unsafe(nil)); end
    def get_schema_header_text(klass, options = T.unsafe(nil)); end
    def get_schema_info(klass, header, options = T.unsafe(nil)); end
    def hide_default?(col_type, options); end
    def hide_limit?(col_type, options); end
    def index_columns_info(index); end
    def index_unique_info(index, format = T.unsafe(nil)); end
    def index_using_info(index, format = T.unsafe(nil)); end
    def index_where_info(index, format = T.unsafe(nil)); end
    def magic_comments_as_string(content); end
    def matched_types(options); end
    def model_dir; end
    def model_dir=(_arg0); end
    def options_with_position(options, position_in); end
    def parse_options(options = T.unsafe(nil)); end
    def quote(value); end
    def remove_annotation_of_file(file_name, options = T.unsafe(nil)); end
    def remove_annotations(options = T.unsafe(nil)); end
    def resolve_filename(filename_template, model_name, table_name); end
    def retrieve_indexes_from_table(klass); end
    def root_dir; end
    def root_dir=(_arg0); end
    def scaffold_files(root_directory); end
    def schema_default(klass, column); end
    def serialize_files(root_directory); end
    def split_model_dir(option_value); end
    def test_files(root_directory); end

    private

    def columns(klass, options); end
    def format_default(col_name, max_size, col_type, bare_type_allowance, attrs); end
    def ignored_translation_table_colums(klass); end
    def list_model_files_from_argument; end
    def map_col_type_to_ruby_classes(col_type); end
    def max_schema_info_width(klass, options); end
    def mb_chars_ljust(string, length); end
    def non_ascii_length(string); end
    def translated_columns(klass); end
    def width(string); end
    def with_comments?(klass, options); end
  end
end

AnnotateModels::ACTIVEADMIN_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::BLUEPRINTS_SPEC_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::BLUEPRINTS_TEST_DIR = T.let(T.unsafe(nil), String)

class AnnotateModels::BadModelFileError < ::LoadError
  def to_s; end
end

AnnotateModels::COMPAT_PREFIX = T.let(T.unsafe(nil), String)

AnnotateModels::COMPAT_PREFIX_MD = T.let(T.unsafe(nil), String)

AnnotateModels::CONTROLLER_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::CONTROLLER_SPEC_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::CONTROLLER_TEST_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::END_MARK = T.let(T.unsafe(nil), String)

AnnotateModels::EXEMPLARS_SPEC_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::EXEMPLARS_TEST_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::FABRICATORS_SPEC_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::FABRICATORS_TEST_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::FACTORY_BOT_SPEC_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::FACTORY_BOT_TEST_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::FIXTURE_SPEC_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::FIXTURE_TEST_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::HELPER_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::INDEX_CLAUSES = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

AnnotateModels::MAGIC_COMMENT_MATCHER = T.let(T.unsafe(nil), Regexp)

AnnotateModels::MATCHED_TYPES = T.let(T.unsafe(nil), T::Array[T.untyped])

AnnotateModels::MODEL_TEST_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::NO_DEFAULT_COL_TYPES = T.let(T.unsafe(nil), T::Array[T.untyped])

AnnotateModels::NO_LIMIT_COL_TYPES = T.let(T.unsafe(nil), T::Array[T.untyped])

AnnotateModels::PREFIX = T.let(T.unsafe(nil), String)

AnnotateModels::PREFIX_MD = T.let(T.unsafe(nil), String)

AnnotateModels::REQUEST_SPEC_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::ROUTING_SPEC_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::SERIALIZERS_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::SERIALIZERS_SPEC_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::SERIALIZERS_TEST_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::SKIP_ANNOTATION_PREFIX = T.let(T.unsafe(nil), String)

AnnotateModels::SPEC_MODEL_DIR = T.let(T.unsafe(nil), String)

AnnotateModels::UNIT_TEST_DIR = T.let(T.unsafe(nil), String)

module AnnotateRoutes
  class << self
    def do_annotations(options = T.unsafe(nil)); end
    def remove_annotations(_options = T.unsafe(nil)); end

    private

    def annotate_routes(header, content, header_position, options = T.unsafe(nil)); end
    def app_routes_map(options); end
    def comment(row = T.unsafe(nil)); end
    def content(line, maxs, options = T.unsafe(nil)); end
    def header(options = T.unsafe(nil)); end
    def rewrite_contents(existing_text, new_text); end
    def routes_file; end
    def routes_file_exist?; end
    def strip_on_removal(content, header_position); end
  end
end

AnnotateRoutes::HEADER_ROW = T.let(T.unsafe(nil), T::Array[T.untyped])

module AnnotateRoutes::Helpers
  class << self
    def extract_magic_comments_from_array(content_array); end
    def strip_annotations(content); end

    private

    def real_content_and_header_position(real_content, header_position); end
  end
end

AnnotateRoutes::Helpers::MAGIC_COMMENT_MATCHER = T.let(T.unsafe(nil), Regexp)

AnnotateRoutes::PREFIX = T.let(T.unsafe(nil), String)

AnnotateRoutes::PREFIX_MD = T.let(T.unsafe(nil), String)
