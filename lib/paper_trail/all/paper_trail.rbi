# typed: strong

module PaperTrail
  extend(::PaperTrail::Cleaner)

  class << self
    def config; end
    def configure; end
    def enabled=(value); end
    def enabled?; end
    def gem_version; end
    def request(options = T.unsafe(nil), &block); end
    def serializer; end
    def serializer=(value); end
    def timestamp_field=(_field_name); end
    def version; end
  end
end

module PaperTrail::AttributeSerializers
end

module PaperTrail::AttributeSerializers::AttributeSerializerFactory
  class << self
    def for(klass, attr); end
  end
end

PaperTrail::AttributeSerializers::AttributeSerializerFactory::AR_PG_ARRAY_CLASS = T.let(T.unsafe(nil), String)

class PaperTrail::AttributeSerializers::CastAttributeSerializer
  def initialize(klass); end

  def deserialize(attr, val); end
  def serialize(attr, val); end

  private

  def defined_enums; end
end

class PaperTrail::AttributeSerializers::ObjectAttribute
  def initialize(model_class); end

  def deserialize(attributes); end
  def serialize(attributes); end

  private

  def alter(attributes, serialization_method); end
  def object_col_is_json?; end
end

class PaperTrail::AttributeSerializers::ObjectChangesAttribute
  def initialize(item_class); end

  def deserialize(changes); end
  def serialize(changes); end

  private

  def alter(changes, serialization_method); end
  def object_changes_col_is_json?; end
end

module PaperTrail::Cleaner
  def clean_versions!(options = T.unsafe(nil)); end

  private

  def gather_versions(item_id = T.unsafe(nil), date = T.unsafe(nil)); end
  def group_versions_by_date(versions); end
end

module PaperTrail::Compatibility
  class << self
    def check_activerecord(ar_version); end
  end
end

PaperTrail::Compatibility::ACTIVERECORD_GTE = T.let(T.unsafe(nil), String)

PaperTrail::Compatibility::ACTIVERECORD_LT = T.let(T.unsafe(nil), String)

PaperTrail::Compatibility::E_INCOMPATIBLE_AR = T.let(T.unsafe(nil), String)

class PaperTrail::Config
  include(::Singleton)
  extend(::Singleton::SingletonClassMethods)

  def initialize; end

  def association_reify_error_behaviour; end
  def association_reify_error_behaviour=(_arg0); end
  def enabled; end
  def enabled=(enable); end
  def has_paper_trail_defaults; end
  def has_paper_trail_defaults=(_arg0); end
  def object_changes_adapter; end
  def object_changes_adapter=(_arg0); end
  def serializer; end
  def serializer=(_arg0); end
  def track_associations=(value); end
  def track_associations?; end
  def version_limit; end
  def version_limit=(_arg0); end
end

PaperTrail::Config::E_PT_AT_REMOVED = T.let(T.unsafe(nil), String)

PaperTrail::E_RAILS_NOT_LOADED = T.let(T.unsafe(nil), String)

PaperTrail::E_TIMESTAMP_FIELD_CONFIG = T.let(T.unsafe(nil), String)

module PaperTrail::Events
end

class PaperTrail::Events::Base
  def initialize(record, in_after_callback); end

  def changed_notably?; end

  private

  def attribute_changed_in_latest_version?(attr_name); end
  def attribute_in_previous_version(attr_name, is_touch); end
  def cache_changed_attributes; end
  def changed_and_not_ignored; end
  def changed_in_latest_version; end
  def changes_in_latest_version; end
  def ignored_attr_has_changed?; end
  def merge_item_subtype_into(data); end
  def merge_metadata_from_controller_into(data); end
  def merge_metadata_from_model_into(data); end
  def merge_metadata_into(data); end
  def model_metadatum(value, event); end
  def nonskipped_attributes_before_change(is_touch); end
  def notable_changes; end
  def notably_changed; end
  def object_attrs_for_paper_trail(is_touch); end
  def prepare_object_changes(changes); end
  def record_object?; end
  def record_object_changes?; end
  def recordable_object(is_touch); end
  def recordable_object_changes(changes); end
  def serialize_object_changes(changes); end
end

PaperTrail::Events::Base::RAILS_GTE_5_1 = T.let(T.unsafe(nil), TrueClass)

class PaperTrail::Events::Create < ::PaperTrail::Events::Base
  def data; end
end

class PaperTrail::Events::Destroy < ::PaperTrail::Events::Base
  def data; end

  private

  def changes_in_latest_version; end
end

class PaperTrail::Events::Update < ::PaperTrail::Events::Base
  def initialize(record, in_after_callback, is_touch, force_changes); end

  def data; end

  private

  def record_object_changes?; end
end

module PaperTrail::Model
  # If you use Rails and use `has_paper_trail` add the following to your local RBI:
  # class ActiveRecord::Base
  #   include PaperTrail::Model
  # end

  mixes_in_class_methods(::PaperTrail::Model::ClassMethods)

  class << self
    def included(base); end
  end
end

module PaperTrail::Model::ClassMethods
  def has_paper_trail(options = T.unsafe(nil)); end
  def paper_trail; end
end

module PaperTrail::Model::InstanceMethods
  def paper_trail; end
end

class PaperTrail::ModelConfig
  def initialize(model_class); end

  def on_create; end
  def on_destroy(recording_order = T.unsafe(nil)); end
  def on_touch; end
  def on_update; end
  def setup(options = T.unsafe(nil)); end
  def version_class; end

  private

  def active_record_gem_version; end
  def assert_concrete_activerecord_class(class_name); end
  def cannot_record_after_destroy?; end
  def check_presence_of_item_subtype_column(options); end
  def check_version_class_name(options); end
  def check_versions_association_name(options); end
  def define_has_many_versions(options); end
  def ensure_versions_option_is_hash(options); end
  def get_versions_scope(options); end
  def setup_associations(options); end
  def setup_callbacks_from_options(options_on = T.unsafe(nil)); end
  def setup_options(options); end
end

PaperTrail::ModelConfig::DPR_CLASS_NAME_OPTION = T.let(T.unsafe(nil), String)

PaperTrail::ModelConfig::DPR_PASSING_ASSOC_NAME_DIRECTLY_TO_VERSIONS_OPTION = T.let(T.unsafe(nil), String)

PaperTrail::ModelConfig::E_CANNOT_RECORD_AFTER_DESTROY = T.let(T.unsafe(nil), String)

PaperTrail::ModelConfig::E_HPT_ABSTRACT_CLASS = T.let(T.unsafe(nil), String)

PaperTrail::ModelConfig::E_MODEL_LIMIT_REQUIRES_ITEM_SUBTYPE = T.let(T.unsafe(nil), String)

module PaperTrail::Queries
end

module PaperTrail::Queries::Versions
end

class PaperTrail::Queries::Versions::WhereObject
  def initialize(version_model_class, attributes); end

  def execute; end

  private

  def json; end
  def jsonb; end
  def text; end
end

class PaperTrail::Queries::Versions::WhereObjectChanges
  def initialize(version_model_class, attributes); end

  def execute; end

  private

  def json; end
  def jsonb; end
  def text; end
end

module PaperTrail::Rails
end

module PaperTrail::Rails::Controller

  protected

  def info_for_paper_trail; end
  def paper_trail_enabled_for_controller; end
  def user_for_paper_trail; end

  private

  def set_paper_trail_controller_info; end
  def set_paper_trail_enabled_for_controller; end
  def set_paper_trail_whodunnit; end

  class << self
    def included(controller); end
  end
end

class PaperTrail::Rails::Engine < ::Rails::Engine
end

class PaperTrail::RecordHistory
  def initialize(versions, version_class); end

  def index(version); end

  private

  def primary_key; end
  def sequence; end
  def table; end
end

class PaperTrail::RecordTrail
  def initialize(record); end

  def clear_rolled_back_versions; end
  def clear_version_instance; end
  def data_for_create; end
  def data_for_destroy; end
  def data_for_update; end
  def data_for_update_columns; end
  def enabled?; end
  def live?; end
  def next_version; end
  def originator; end
  def previous_version; end
  def record_create; end
  def record_destroy(recording_order); end
  def record_update(force:, in_after_callback:, is_touch:); end
  def record_update_columns(changes); end
  def reset_timestamp_attrs_for_update_if_needed; end
  def save_version?; end
  def save_with_version(*args); end
  def source_version; end
  def update_column(name, value); end
  def update_columns(attributes); end
  def version_at(timestamp, reify_options = T.unsafe(nil)); end
  def versions_between(start_time, end_time); end

  private

  def assign_and_reset_version_association(version); end
  def build_version_on_create(in_after_callback:); end
  def build_version_on_update(force:, in_after_callback:, is_touch:); end
  def log_version_errors(version, action); end
  def version; end
  def versions; end
end

PaperTrail::RecordTrail::RAILS_GTE_5_1 = T.let(T.unsafe(nil), TrueClass)

module PaperTrail::Reifier
  class << self
    def reify(version, options); end

    private

    def apply_defaults_to(options, version); end
    def init_model(attrs, options, version); end
    def init_unversioned_attrs(attrs, model); end
    def reify_attribute(k, v, model, version); end
    def reify_attributes(model, version, attrs); end
    def version_reification_class(version, attrs); end
  end
end

module PaperTrail::Request
  class << self
    def controller_info; end
    def controller_info=(value); end
    def disable_model(model_class); end
    def enable_model(model_class); end
    def enabled=(value); end
    def enabled?; end
    def enabled_for_model(model, value); end
    def enabled_for_model?(model); end
    def merge(options); end
    def set(options); end
    def to_h; end
    def whodunnit; end
    def whodunnit=(value); end
    def with(options); end

    private

    def store; end
    def validate_public_options(options); end
  end
end

class PaperTrail::Request::InvalidOption < ::RuntimeError
end

module PaperTrail::Serializers
end

module PaperTrail::Serializers::JSON
  extend(::PaperTrail::Serializers::JSON)

  def dump(object); end
  def load(string); end
  def where_object_changes_condition(*_arg0); end
  def where_object_condition(arel_field, field, value); end
end

module PaperTrail::Serializers::YAML
  extend(::PaperTrail::Serializers::YAML)

  def dump(object); end
  def load(string); end
  def where_object_changes_condition(*_arg0); end
  def where_object_condition(arel_field, field, value); end
end

module PaperTrail::TypeSerializers
end

class PaperTrail::TypeSerializers::PostgresArraySerializer
  def initialize(subtype, delimiter); end

  def deserialize(array); end
  def serialize(array); end

  private

  def active_record_pre_502?; end
  def deserialize_with_ar(array); end
  def serialize_with_ar(array); end
end

module PaperTrail::VERSION
  class << self
    def to_s; end
  end
end

PaperTrail::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)

PaperTrail::VERSION::MINOR = T.let(T.unsafe(nil), Integer)

PaperTrail::VERSION::STRING = T.let(T.unsafe(nil), String)

PaperTrail::VERSION::TINY = T.let(T.unsafe(nil), Integer)

module PaperTrail::VersionConcern
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::PaperTrail::VersionConcern::ClassMethods)

  def changeset; end
  def index; end
  def next; end
  def object_deserialized; end
  def paper_trail_originator; end
  def previous; end
  def reify(options = T.unsafe(nil)); end
  def sibling_versions(reload = T.unsafe(nil)); end
  def terminator; end
  def version_author; end

  private

  def enforce_version_limit!; end
  def load_changeset; end
  def object_changes_deserialized; end
  def version_limit; end
end

module PaperTrail::VersionConcern::ClassMethods
  def between(start_time, end_time); end
  def creates; end
  def destroys; end
  def item_subtype_column_present?; end
  def not_creates; end
  def object_changes_col_is_json?; end
  def object_col_is_json?; end
  def preceding(obj, timestamp_arg = T.unsafe(nil)); end
  def primary_key_is_int?; end
  def subsequent(obj, timestamp_arg = T.unsafe(nil)); end
  def timestamp_sort_order(direction = T.unsafe(nil)); end
  def updates; end
  def where_object(args = T.unsafe(nil)); end
  def where_object_changes(args = T.unsafe(nil)); end
  def with_item_keys(item_type, item_id); end

  private

  def preceding_by_id(obj); end
  def preceding_by_timestamp(obj); end
  def subsequent_by_id(version); end
  def subsequent_by_timestamp(obj); end
end
