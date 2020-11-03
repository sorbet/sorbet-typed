# typed: strong

VariadicUntypedFunction = T.type_alias { Proc }
AssociationCallback = T.type_alias do
  # docs in https://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html - jump to "Association callbacks"
  T.nilable(
    T.any(
      Symbol, # reference to a method
      String, # reference to a method? not clear: no string examples in docs
      T.proc.void, # a lambda that contains the callback
      Proc, # a proc that contains the callback
      T::Array[T.any(Symbol, Proc, T.proc.void)] # multiple callbacks
    )
  )
end

class ActiveRecord::ConnectionAdapters::AbstractAdapter; end
module ActiveRecord::QueryCache::ClassMethods; end
module ActiveRecord::Querying; end
module ActiveRecord::Translation; end
module ActiveRecord::DynamicMatchers; end
module ActiveRecord::Explain; end
module ActiveRecord::AttributeAssignment; end
module ActiveRecord::Integration; end
module ActiveRecord::CounterCache; end
module ActiveRecord::Attributes; end
module ActiveRecord::AttributeDecorators; end
module ActiveRecord::Locking::Optimistic; end
module ActiveRecord::Callbacks; end
module ActiveRecord::Timestamp; end
module ActiveRecord::Aggregations; end
module ActiveRecord::NoTouching; end
module ActiveRecord::Reflection; end
module ActiveRecord::Serialization; end
module ActiveRecord::Store; end

module ActiveRecord::Associations
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::Associations::ClassMethods)

  def association(name); end
  def association_cached?(name); end
  def reload(*_); end

  private

  def association_instance_get(name); end
  def association_instance_set(name, association); end
  def clear_association_cache; end
  def init_internals; end
  def initialize_dup(*_); end

  class << self
    def eager_load!; end
  end
end

module ActiveRecord::Associations::ClassMethods
  sig do
    params(
      name: Symbol,
      scope: T.nilable(T.proc.void),
      after_add: AssociationCallback,
      after_remove: AssociationCallback,
      anonymous_class: T.nilable(T.any(Symbol, String)),
      as: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      before_add: AssociationCallback,
      before_remove: AssociationCallback,
      class_name: T.nilable(T.any(Symbol, String)),
      counter_cache: T.nilable(T.any(Symbol, String)),
      dependent: T.nilable(T.any(Symbol, String)),
      extend: T.nilable(T.any(Module, T::Array[Module])),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      index_errors: T.nilable(T::Boolean),
      inverse_of: T.nilable(T.any(Symbol, String, FalseClass)),
      join_table: T.nilable(T.any(Symbol, String)),
      primary_key: T.nilable(T.any(Symbol, String)),
      source: T.nilable(T.any(Symbol, String)),
      source_type: T.nilable(T.any(Symbol, String)),
      table_name: T.nilable(T.any(Symbol, String)),
      through: T.nilable(T.any(Symbol, String)),
      validate: T.nilable(T::Boolean),
      blk: T.nilable(T.proc.void)
    ).void
  end
  def has_many(
    name,
    scope = nil,
    after_add: nil,
    after_remove: nil,
    anonymous_class: nil,
    as: nil,
    autosave: nil,
    before_add: nil,
    before_remove: nil,
    class_name: nil,
    counter_cache: nil,
    dependent: nil,
    extend: nil,
    foreign_key: nil,
    foreign_type: nil,
    index_errors: nil,
    inverse_of: nil,
    join_table: nil,
    primary_key: nil,
    source: nil,
    source_type: nil,
    table_name: nil,
    through: nil,
    validate: nil,
    &blk
  ); end

  sig do
    params(
      name: Symbol,
      scope: T.nilable(T.proc.void),
      anonymous_class: T.nilable(T.any(Symbol, String)),
      as: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      class_name: T.nilable(T.any(Symbol, String)),
      dependent: T.nilable(T.any(Symbol, String)),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      inverse_of: T.nilable(T.any(Symbol, String, FalseClass)),
      primary_key: T.nilable(T.any(Symbol, String)),
      required: T.nilable(T::Boolean),
      source: T.nilable(T.any(Symbol, String)),
      source_type: T.nilable(T.any(Symbol, String)),
      through: T.nilable(T.any(Symbol, String)),
      validate: T.nilable(T::Boolean),
      blk: T.nilable(T.proc.void)
    ).void
  end
  def has_one(
    name,
    scope = nil,
    anonymous_class: nil,
    as: nil,
    autosave: nil,
    class_name: nil,
    dependent: nil,
    foreign_key: nil,
    foreign_type: nil,
    inverse_of: nil,
    primary_key: nil,
    required: nil,
    source: nil,
    source_type: nil,
    through: nil,
    validate: nil,
    &blk
  ); end

  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      scope: T.nilable(T.proc.void),
      autosave: T.nilable(T::Boolean),
      class_name: T.nilable(T.any(Symbol, String)),
      counter_cache: T.nilable(T.any(Symbol, String, T::Boolean)),
      dependent: T.nilable(T.any(Symbol, String)),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      inverse_of: T.nilable(T.any(Symbol, String, FalseClass)),
      optional: T.nilable(T::Boolean),
      polymorphic: T.nilable(T::Boolean),
      primary_key: T.nilable(T.any(Symbol, String)),
      required: T.nilable(T::Boolean),
      touch: T.nilable(T.any(T::Boolean, Symbol)),
      validate: T.nilable(T::Boolean),
      default: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def belongs_to(
    name,
    scope = nil,
    autosave: nil,
    class_name: nil,
    counter_cache: nil,
    dependent: nil,
    foreign_key: nil,
    foreign_type: nil,
    inverse_of: nil,
    optional: nil,
    polymorphic: nil,
    primary_key: nil,
    required: nil,
    touch: nil,
    validate: nil,
    default: nil
  ); end

  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      scope: T.nilable(T.proc.void),
      after_add: AssociationCallback,
      after_remove: AssociationCallback,
      association_foreign_key: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      before_add: AssociationCallback,
      before_remove: AssociationCallback,
      class_name: T.nilable(T.any(Symbol, String)),
      extend: T.nilable(T.any(Module, T::Array[Module])),
      foreign_key: T.nilable(T.any(Symbol, String)),
      join_table: T.nilable(T.any(Symbol, String)),
      validate: T.nilable(T::Boolean),
      blk: T.nilable(T.proc.void)
    ).void
  end
  def has_and_belongs_to_many(
    name,
    scope = nil,
    after_add: nil,
    after_remove: nil,
    association_foreign_key: nil,
    autosave: nil,
    before_add: nil,
    before_remove: nil,
    class_name: nil,
    extend: nil,
    foreign_key: nil,
    join_table: nil,
    validate: nil,
    &blk
  ); end
end

module ActiveRecord::AttributeMethods
  include ActiveModel::AttributeMethods
end

module ActiveRecord::AttributeMethods::Serialization::ClassMethods
  sig { params(attr_name: Symbol, class_name_or_coder: T.untyped).void }
  def serialize(attr_name, class_name_or_coder = Object); end
end

module ActiveRecord::AttributeMethods
  extend(::ActiveSupport::Concern)
  extend(::FilterEncryptedAttributes)

  include(::ActiveModel::AttributeMethods)
  include(::ActiveRecord::AttributeMethods::Read)
  include(::ActiveRecord::AttributeMethods::Write)
  include(::ActiveRecord::AttributeMethods::BeforeTypeCast)
  include(::ActiveRecord::AttributeMethods::Query)
  include(::ActiveRecord::AttributeMethods::PrimaryKey)
  include(::ActiveRecord::AttributeMethods::TimeZoneConversion)
  include(::ActiveModel::Dirty)
  include(::ActiveRecord::AttributeMethods::Dirty)
  include(::ActiveRecord::AttributeMethods::Serialization)

  mixes_in_class_methods(::ActiveRecord::AttributeMethods::ClassMethods)

  def [](attr_name); end
  def []=(attr_name, value); end
  def accessed_fields; end
  def attribute_for_inspect(attr_name); end
  def attribute_names; end
  def attribute_present?(attribute); end
  def attributes; end
  def attributes_without_attr_encrypted; end
  def has_attribute?(attr_name); end
  def respond_to?(name, include_private = T.unsafe(nil)); end

  private

  def attribute_method?(attr_name); end
  def attributes_for_create(attribute_names); end
  def attributes_for_update(attribute_names); end
  def attributes_with_values(attribute_names); end
  def format_for_inspect(value); end
  def pk_attribute?(name); end
  def readonly_attribute?(name); end
end

module ActiveRecord::AttributeMethods::BeforeTypeCast
  extend(::ActiveSupport::Concern)

  def attributes_before_type_cast; end
  def read_attribute_before_type_cast(attr_name); end

  private

  def attribute_before_type_cast(attribute_name); end
  def attribute_came_from_user?(attribute_name); end
end

module ActiveRecord::AttributeMethods::ClassMethods
  def attribute_method?(attribute); end
  def attribute_names; end
  def class_method_defined_within?(name, klass, superklass = T.unsafe(nil)); end
  def column_for_attribute(name); end
  def dangerous_attribute_method?(name); end
  def dangerous_class_method?(method_name); end
  def define_attribute_methods; end
  def has_attribute?(attr_name); end
  def inherited(child_class); end
  def initialize_generated_modules; end
  def instance_method_already_implemented?(method_name); end
  def method_defined_within?(name, klass, superklass = T.unsafe(nil)); end
  def undefine_attribute_methods; end
end

module ActiveRecord::AttributeMethods::Dirty
  extend(::ActiveSupport::Concern)

  include(::ActiveModel::AttributeMethods)
  include(::ActiveModel::Dirty)

  def attribute_before_last_save(attr_name); end
  def attribute_change_to_be_saved(attr_name); end
  def attribute_in_database(attr_name); end
  def attributes_in_database; end
  def changed_attribute_names_to_save; end
  def changes_to_save; end
  def has_changes_to_save?; end
  def reload(*_); end
  def saved_change_to_attribute(attr_name); end
  def saved_change_to_attribute?(attr_name, **options); end
  def saved_changes; end
  def saved_changes?; end
  def will_save_change_to_attribute?(attr_name, **options); end

  private

  def _create_record(attribute_names = T.unsafe(nil)); end
  def _touch_row(attribute_names, time); end
  def _update_record(attribute_names = T.unsafe(nil)); end
  def attribute_names_for_partial_writes; end
  def mutations_before_last_save; end
  def mutations_from_database; end
  def write_attribute_without_type_cast(attr_name, value); end
end

class ActiveRecord::AttributeMethods::GeneratedAttributeMethods < ::Module
  include(::Mutex_m)

  def lock; end
  def locked?; end
  def synchronize(&block); end
  def try_lock; end
  def unlock; end
end

module ActiveRecord::AttributeMethods::PrimaryKey
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::AttributeMethods::PrimaryKey::ClassMethods)

  def id; end
  def id=(value); end
  def id?; end
  def id_before_type_cast; end
  def id_in_database; end
  def id_was; end
  def to_key; end

  private

  def attribute_method?(attr_name); end
end

module ActiveRecord::AttributeMethods::PrimaryKey::ClassMethods
  def dangerous_attribute_method?(method_name); end
  def get_primary_key(base_name); end
  def instance_method_already_implemented?(method_name); end
  def primary_key; end
  def primary_key=(value); end
  def quoted_primary_key; end
  def reset_primary_key; end

  private

  def suppress_composite_primary_key(pk); end
end

ActiveRecord::AttributeMethods::PrimaryKey::ClassMethods::ID_ATTRIBUTE_METHODS = T.let(T.unsafe(nil), T::Set[T.untyped])

module ActiveRecord::AttributeMethods::Query
  extend(::ActiveSupport::Concern)

  def query_attribute(attr_name); end

  private

  def attribute?(attribute_name); end
end

ActiveRecord::AttributeMethods::RESTRICTED_CLASS_METHODS = T.let(T.unsafe(nil), T::Array[T.untyped])

module ActiveRecord::AttributeMethods::Read
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::AttributeMethods::Read::ClassMethods)

  def _read_attribute(attr_name, &block); end
  def read_attribute(attr_name, &block); end

  private

  def attribute(attr_name, &block); end
end

module ActiveRecord::AttributeMethods::Read::ClassMethods

  private

  def define_method_attribute(name); end
end

module ActiveRecord::AttributeMethods::Serialization
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::AttributeMethods::Serialization::ClassMethods)
end

module ActiveRecord::AttributeMethods::Serialization::ClassMethods
  def serialize(attr_name, class_name_or_coder = T.unsafe(nil)); end

  private

  def type_incompatible_with_serialize?(type, class_name); end
end

class ActiveRecord::AttributeMethods::Serialization::ColumnNotSerializableError < ::StandardError
  def initialize(name, type); end
end

module ActiveRecord::AttributeMethods::TimeZoneConversion
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::AttributeMethods::TimeZoneConversion::ClassMethods)
end

module ActiveRecord::AttributeMethods::TimeZoneConversion::ClassMethods

  private

  def create_time_zone_conversion_attribute?(name, cast_type); end
  def inherited(subclass); end
end

class ActiveRecord::AttributeMethods::TimeZoneConversion::TimeZoneConverter
  def cast(value); end
  def deserialize(value); end

  private

  def convert_time_to_time_zone(value); end
  def map_avoiding_infinite_recursion(value); end
  def set_time_zone_without_conversion(value); end
end

module ActiveRecord::AttributeMethods::Write
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::AttributeMethods::Write::ClassMethods)

  def _write_attribute(attr_name, value); end
  def write_attribute(attr_name, value); end

  private

  def attribute=(attribute_name, value); end
  def write_attribute_without_type_cast(attr_name, value); end
end

module ActiveRecord::AttributeMethods::Write::ClassMethods

  private

  def define_method_attribute=(name); end
end

module ActiveRecord::AutosaveAssociation
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::AutosaveAssociation::ClassMethods)

  def changed_for_autosave?; end
  def destroyed_by_association; end
  def destroyed_by_association=(reflection); end
  def mark_for_destruction; end
  def marked_for_destruction?; end
  def reload(options = T.unsafe(nil)); end

  private

  def _ensure_no_duplicate_errors; end
  def after_save_collection_association; end
  def associated_records_to_validate_or_save(association, new_record, autosave); end
  def association_foreign_key_changed?(reflection, record, key); end
  def association_valid?(reflection, record, index = T.unsafe(nil)); end
  def before_save_collection_association; end
  def custom_validation_context?; end
  def nested_records_changed_for_autosave?; end
  def normalize_reflection_attribute(indexed_attribute, reflection, index, attribute); end
  def record_changed?(reflection, record, key); end
  def save_belongs_to_association(reflection); end
  def save_collection_association(reflection); end
  def save_has_one_association(reflection); end
  def validate_collection_association(reflection); end
  def validate_single_association(reflection); end
end

module ActiveRecord::AutosaveAssociation::AssociationBuilderExtension
  class << self
    def build(model, reflection); end
    def valid_options; end
  end
end

module ActiveRecord::AutosaveAssociation::ClassMethods

  private

  def add_autosave_association_callbacks(reflection); end
  def define_autosave_validation_callbacks(reflection); end
  def define_non_cyclic_method(name, &block); end
end

module ActiveRecord::ConnectionHandling
  def clear_active_connections!(*_, &_); end
  def clear_all_connections!(*_, &_); end
  def clear_cache!; end
  def clear_query_caches_for_current_thread; end
  def clear_reloadable_connections!(*_, &_); end
  def connected?; end
  def connection; end
  def connection_config; end
  def connection_pool; end
  def connection_specification_name; end
  def connection_specification_name=(_); end
  def establish_connection(config_or_env = T.unsafe(nil)); end
  def flush_idle_connections!(*_, &_); end
  def lookup_connection_handler(handler_key); end
  def primary_class?; end
  def remove_connection(name = T.unsafe(nil)); end
  def resolve_config_for_connection(config_or_env); end
  def retrieve_connection; end
  def with_handler(handler_key, &blk); end

  private

  def swap_connection_handler(handler, &blk); end
end

module ActiveRecord::Core
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::Core::ClassMethods)

  def initialize(attributes = T.unsafe(nil)); end

  def <=>(other_object); end
  def ==(comparison_object); end
  def blank?; end
  def connection_handler; end
  def encode_with(coder); end
  def eql?(comparison_object); end
  def freeze; end
  def frozen?; end
  def hash; end
  def init_with(coder, &block); end
  def init_with_attributes(attributes, new_record = T.unsafe(nil)); end
  def inspect; end
  def present?; end
  def pretty_print(pp); end
  def readonly!; end
  def readonly?; end
  def slice(*methods); end

  private

  def custom_inspect_method_defined?; end
  def init_internals; end
  def initialize_dup(other); end
  def initialize_internals_callback; end
  def inspection_filter; end
  def to_ary; end
end

module ActiveRecord::Core::ClassMethods
  def ===(object); end
  def _internal?; end
  def arel_attribute(name, table = T.unsafe(nil)); end
  def arel_table; end
  def filter_attributes; end
  def filter_attributes=(_); end
  def find(*ids); end
  def find_by(*args); end
  def find_by!(*args); end
  def generated_association_methods; end
  def inherited(child_class); end
  def initialize_find_by_cache; end
  def initialize_generated_modules; end
  def inspect; end
  def predicate_builder; end
  def type_caster; end

  private

  def cached_find_by_statement(key, &block); end
  def relation; end
  def table_metadata; end
end

module ActiveRecord::Tasks::DatabaseTasks
  extend(::ActiveRecord::Tasks::DatabaseTasks)

  def cache_dump_filename(namespace); end
  def charset(*arguments); end
  def charset_current(environment = T.unsafe(nil), specification_name = T.unsafe(nil)); end
  def check_protected_environments!; end
  def check_schema_file(filename); end
  def check_target_version; end
  def collation(*arguments); end
  def collation_current(environment = T.unsafe(nil), specification_name = T.unsafe(nil)); end
  def create(*arguments); end
  def create_all; end
  def create_current(environment = T.unsafe(nil), spec_name = T.unsafe(nil)); end
  def current_config(options = T.unsafe(nil)); end
  def current_config=(_); end
  def database_configuration; end
  def database_configuration=(_); end
  def db_dir; end
  def db_dir=(_); end
  def drop(*arguments); end
  def drop_all; end
  def drop_current(environment = T.unsafe(nil)); end
  def dump_filename(namespace, format = T.unsafe(nil)); end
  def dump_schema(configuration, format = T.unsafe(nil), spec_name = T.unsafe(nil)); end
  def dump_schema_cache(conn, filename); end
  def env; end
  def env=(_); end
  def fixtures_path; end
  def fixtures_path=(_); end
  def for_each(databases); end
  def load_schema(configuration, format = T.unsafe(nil), file = T.unsafe(nil), environment = T.unsafe(nil), spec_name = T.unsafe(nil)); end
  def load_schema_current(format = T.unsafe(nil), file = T.unsafe(nil), environment = T.unsafe(nil)); end
  def load_seed; end
  def migrate; end
  def migrate_status; end
  def migrations_paths; end
  def migrations_paths=(_); end
  def purge(configuration); end
  def purge_all; end
  def purge_current(environment = T.unsafe(nil)); end
  def raise_for_multi_db(environment = T.unsafe(nil), command:); end
  def reconstruct_from_schema(configuration, format = T.unsafe(nil), file = T.unsafe(nil), environment = T.unsafe(nil), spec_name = T.unsafe(nil)); end
  def register_task(pattern, task); end
  def root; end
  def root=(_); end
  def schema_file(format = T.unsafe(nil)); end
  def schema_file_type(format = T.unsafe(nil)); end
  def schema_up_to_date?(configuration, format = T.unsafe(nil), file = T.unsafe(nil), environment = T.unsafe(nil), spec_name = T.unsafe(nil)); end
  def seed_loader; end
  def seed_loader=(_); end
  def setup_initial_database_yaml; end
  def spec; end
  def structure_dump(*arguments); end
  def structure_load(*arguments); end
  def target_version; end
  def truncate_all(environment = T.unsafe(nil)); end

  private

  def class_for_adapter(adapter); end
  def each_current_configuration(environment, spec_name = T.unsafe(nil)); end
  def each_local_configuration; end
  def local_database?(configuration); end
  def schema_sha1(file); end
  def truncate_tables(configuration); end
  def verbose?; end

  class << self
    def structure_dump_flags; end
    def structure_dump_flags=(obj); end
    def structure_load_flags; end
    def structure_load_flags=(obj); end
  end
end

ActiveRecord::Tasks::DatabaseTasks::LOCAL_HOSTS = T.let(T.unsafe(nil), T::Array[T.untyped])

module ActiveRecord::Delegation
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::Delegation::ClassMethods)

  def &(*_, &_); end
  def +(*_, &_); end
  def -(*_, &_); end
  def [](*_, &_); end
  def as_json(*_, &_); end
  def compact(*_, &_); end
  def connection(*_, &_); end
  def each(*_, &_); end
  def encode_with(*_, &_); end
  def in_groups(*_, &_); end
  def in_groups_of(*_, &_); end
  def index(*_, &_); end
  def join(*_, &_); end
  def length(*_, &_); end
  def primary_key(*_, &_); end
  def reverse(*_, &_); end
  def rindex(*_, &_); end
  def rotate(*_, &_); end
  def sample(*_, &_); end
  def shuffle(*_, &_); end
  def slice(*_, &_); end
  def split(*_, &_); end
  def to_formatted_s(*_, &_); end
  def to_sentence(*_, &_); end
  def to_xml(*_, &_); end
  def |(*_, &_); end

  private

  def respond_to_missing?(method, _); end
end

module ActiveRecord::Delegation::ClassMethods
  def create(klass, *args, **kwargs); end

  private

  def relation_class_for(klass); end
end

module ActiveRecord::Delegation::ClassSpecificRelation
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods)


  private

  def method_missing(method, *args, &block); end
end

module ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  def name; end
end

module ActiveRecord::Delegation::DelegateCache
  def generate_relation_method(method); end
  def inherited(child_class); end
  def initialize_relation_delegate_cache; end
  def relation_delegate_class(klass); end

  protected

  def include_relation_methods(delegate); end

  private

  def generated_relation_methods; end
end

module ActiveRecord::Enum
  def enum(definitions); end
  def inherited(base); end

  private

  def _enum_methods_module; end
  def assert_valid_enum_definition_values(values); end
  def detect_enum_conflict!(enum_name, method_name, klass_method = T.unsafe(nil)); end
  def detect_negative_condition!(method_name); end
  def raise_conflict_error(enum_name, method_name, type: T.unsafe(nil), source: T.unsafe(nil)); end

  class << self
    def extended(base); end
  end
end

class ActiveRecord::Enum::EnumType < ::ActiveModel::Type::Value
  def initialize(name, mapping, subtype); end

  def assert_valid_value(value); end
  def cast(value); end
  def deserialize(value); end
  def serialize(value); end
  def type(*_, &_); end

  private

  def mapping; end
  def name; end
  def subtype; end
end

ActiveRecord::Migration::MigrationFilenameRegexp = T.let(T.unsafe(nil), Regexp)

class ActiveRecord::MigrationProxy < ::Struct
  Elem = type_member(fixed: T.untyped)

  def initialize(name, version, filename, scope); end

  def announce(*_, &_); end
  def basename; end
  def disable_ddl_transaction(*_, &_); end
  def filename; end
  def filename=(_); end
  def migrate(*_, &_); end
  def mtime; end
  def name; end
  def name=(_); end
  def scope; end
  def scope=(_); end
  def version; end
  def version=(_); end
  def write(*_, &_); end

  private

  def load_migration; end
  def migration; end

  class << self
    def [](*_); end
    def inspect; end
    def members; end
    def new(*_); end
  end
end

class ActiveRecord::Migrator
  def initialize(direction, migrations, schema_migration, target_version = T.unsafe(nil)); end

  def current; end
  def current_migration; end
  def current_version; end
  def load_migrated; end
  def migrate; end
  def migrated; end
  def migrations; end
  def pending_migrations; end
  def run; end
  def runnable; end

  private

  def ddl_transaction(migration); end
  def down?; end
  def execute_migration_in_transaction(migration, direction); end
  def finish; end
  def generate_migrator_advisory_lock_id; end
  def invalid_target?; end
  def migrate_without_lock; end
  def ran?(migration); end
  def record_environment; end
  def record_version_state_after_migrating(version); end
  def run_without_lock; end
  def start; end
  def target; end
  def up?; end
  def use_advisory_lock?; end
  def use_transaction?(migration); end
  def validate(migrations); end
  def with_advisory_lock; end

  class << self
    def current_version; end
    def migrations_paths; end
    def migrations_paths=(_); end
  end
end

ActiveRecord::Migrator::MIGRATOR_SALT = T.let(T.unsafe(nil), Integer)

module ActiveRecord::NestedAttributes::ClassMethods
  sig do
    params(
      attr_names: T.any(T.any(Symbol, String), T::Array[T.any(Symbol, String)]),
      allow_destroy: T.nilable(T::Boolean),
      reject_if: T.any(Symbol, T.proc.returns(T::Boolean)),
      limit: T.any(Integer, Symbol, T.proc.returns(Integer)),
      update_only: T.nilable(T::Boolean),
    ).void
  end
  def accepts_nested_attributes_for(
    attr_names,
    allow_destroy: nil,
    reject_if: nil,
    limit: nil,
    update_only: nil
  ); end
end

module ActiveRecord::ReadonlyAttributes
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::ReadonlyAttributes::ClassMethods)
end

module ActiveRecord::ReadonlyAttributes::ClassMethods
  def attr_readonly(*attributes); end
  def readonly_attributes; end
end

module ActiveRecord::Scoping::Default::ClassMethods
  def before_remove_const; end
  def scope_attributes?; end
  def unscoped; end

  private

  def build_default_scope(relation = T.unsafe(nil)); end
  def default_scope(scope = T.unsafe(nil), &block); end
  def evaluate_default_scope; end
  def ignore_default_scope=(ignore); end
  def ignore_default_scope?; end
end

module ActiveRecord::Scoping::Named
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::Scoping::Named::ClassMethods)
end

module ActiveRecord::Scoping::Named::ClassMethods
  def all; end
  def default_extensions; end
  def default_scoped(scope = T.unsafe(nil)); end

  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      body: VariadicUntypedFunction,
      block: T.nilable(VariadicUntypedFunction)
    ).void
  end
  def scope(name, body, &block); end

  def scope_for_association(scope = T.unsafe(nil)); end

  private

  def valid_scope_name?(name); end
end

module ActiveRecord::Inheritance
  mixes_in_class_methods(ActiveRecord::Inheritance::ClassMethods)
end

module ActiveRecord::Transactions
  mixes_in_class_methods(ActiveRecord::Transactions::ClassMethods)
end

module ActiveRecord::Validations::ClassMethods
  def validates_absence_of(*attr_names); end
  def validates_associated(*attr_names); end
  def validates_length_of(*attr_names); end
  def validates_presence_of(*attr_names); end
  def validates_size_of(*attr_names); end
  def validates_uniqueness_of(*attr_names); end
end

class ActiveRecord::Base
  extend ActiveModel::Naming

  extend ActiveSupport::Benchmarkable
  extend ActiveSupport::DescendantsTracker

  extend ActiveRecord::ConnectionHandling
  extend ActiveRecord::QueryCache::ClassMethods
  extend ActiveRecord::Querying
  extend ActiveRecord::Translation
  extend ActiveRecord::DynamicMatchers
  extend ActiveRecord::Explain
  extend ActiveRecord::Enum

  include ActiveRecord::Core
  include ActiveRecord::Persistence
  include ActiveRecord::ReadonlyAttributes
  include ActiveRecord::ModelSchema
  extend ActiveRecord::ModelSchema::ClassMethods # via ActiveRecord::ModelSchema concern inclusion
  include ActiveRecord::Sanitization
  extend ActiveRecord::Sanitization::ClassMethods # via ActiveRecord::Sanitization concern inclusion
  include ActiveRecord::Inheritance
  include ActiveRecord::Scoping
  include ActiveRecord::Scoping::Default # via ActiveRecord::Scoping#included hook
  extend ActiveRecord::Scoping::Default::ClassMethods # via ActiveRecord::Scoping::Default Concern inclusion
  include ActiveRecord::Scoping::Named # via ActiveRecord::Scoping#included hook
  extend ActiveRecord::Scoping::Named::ClassMethods # via ActiveRecord::Scoping::Named Concern inclusion
  include ActiveRecord::AttributeAssignment
  include ActiveModel::Conversion
  include ActiveRecord::Integration
  include ActiveModel::Validations
  include ActiveModel::Validations::HelperMethods
  extend ActiveRecord::Validations::ClassMethods
  include ActiveRecord::CounterCache
  include ActiveRecord::Attributes
  include ActiveRecord::AttributeDecorators
  include ActiveRecord::Locking::Optimistic
  include ActiveRecord::Locking::Pessimistic
  include ActiveRecord::AttributeMethods
  include ActiveRecord::AttributeMethods::Read # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Write # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::BeforeTypeCast # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Query # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::PrimaryKey # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::TimeZoneConversion # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Dirty # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Serialization # via ActiveRecord::AttributeMethods#included hook
  extend ActiveRecord::AttributeMethods::Serialization::ClassMethods # via ActiveRecord::AttributeMethods::Serialization Concern inclusion
  include ActiveRecord::Callbacks
  include ActiveRecord::Timestamp
  include ActiveRecord::Associations
  include ActiveModel::SecurePassword
  include ActiveRecord::AutosaveAssociation
  include ActiveRecord::NestedAttributes
  extend ActiveRecord::NestedAttributes::ClassMethods # via ActiveRecord::NestedAttributes Concern inclusion
  include ActiveRecord::Aggregations
  include ActiveRecord::Transactions
  include ActiveRecord::NoTouching
  include ActiveRecord::Reflection
  include ActiveRecord::Serialization
  include ActiveRecord::Store

  sig do
    params(
      arg: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(T.any(Symbol, T::Array[Symbol])),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_commit(
    arg,
    if: nil,
    on: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_create(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_destroy(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_rollback(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_save(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_update(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(T.any(Symbol, T::Array[Symbol]))
    ).void
  end
  def self.after_validation(
    arg = nil,
    if: nil,
    unless: nil,
    on: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.around_create(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.around_destroy(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.around_save(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.around_update(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.before_create(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      prepend: T::Boolean
    ).void
  end
  def self.before_destroy(
    arg = nil,
    if: nil,
    unless: nil,
    prepend: false
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.before_save(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.before_update(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(T.any(Symbol, T::Array[Symbol]))
    ).void
  end
  def self.before_validation(
    arg = nil,
    if: nil,
    unless: nil,
    on: nil
  ); end

  sig { params(comparison_object: T.untyped).returns(T::Boolean) }
  def ==(comparison_object); end
end

module ActiveRecord::Inheritance::ClassMethods
  sig { params(value: T::Boolean).void }
  def abstract_class=(value); end

  sig { returns(T::Boolean) }
  def abstract_class; end
end

module ActiveRecord::Transactions::ClassMethods
  sig do
    params(
      options: T.nilable(T::Hash[T.any(Symbol, String), T.untyped]),
      block: T.proc.returns(T.untyped)
    ).returns(T.untyped)
  end
  def transaction(options = {}, &block); end
end

module ActiveRecord::Persistence
  mixes_in_class_methods(ActiveRecord::Persistence::ClassMethods)

  sig { params(klass: Class).returns(T.untyped) }
  def becomes!(klass); end

  sig { params(klass: Class).returns(T.untyped) }
  def becomes(klass); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer),
      touch: T.nilable(T::Boolean)
    ).returns(T.self_type)
  end
  def decrement!(attribute, by = 1, touch: nil); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer)
    ).returns(T.self_type)
  end
  def decrement(attribute, by = 1); end

  sig { returns(T.self_type) }
  def delete; end

  sig { returns(T.any(T.self_type, FalseClass)) }
  def destroy; end

  sig { returns(T.self_type) }
  def destroy!; end

  sig { returns(T::Boolean) }
  def destroyed?(); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer),
      touch: T.nilable(T::Boolean)
    ).returns(T.self_type)
  end
  def increment!(attribute, by = 1, touch: nil); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer)
    ).returns(T.self_type)
  end
  def increment(attribute, by = 1); end

  sig { returns(T::Boolean) }
  def new_record?(); end

  sig { returns(T::Boolean) }
  def persisted?(); end

  sig do
    params(
      options: T.nilable({ lock: T.nilable(T::Boolean) })
    ).returns(T.self_type)
  end
  def reload(options = nil); end

  sig do
    params(
      args: T.untyped,
      blk: T.nilable(T.proc.void),
    ).returns(TrueClass)
  end
  def save!(*args, &blk); end

  sig do
    params(
      args: T.untyped,
      blk: T.nilable(T.proc.void),
    ).returns(T::Boolean)
  end
  def save(*args, &blk); end

  sig { params(attribute: T.any(Symbol, String)).returns(TrueClass) }
  def toggle!(attribute); end

  sig { params(attribute: T.any(Symbol, String)).returns(T.self_type) }
  def toggle(attribute); end

  sig do
    params(
      names: T.any(
        Symbol,
        String,
        T::Array[T.any(Symbol, String)]
      ),
      time: T.nilable(Time)
    ).returns(T::Boolean)
  end
  def touch(*names, time: nil); end

  sig do
    params(
      name: T.any(Symbol, String),
      value: T.untyped,
    ).returns(T::Boolean)
  end
  def update_attribute(name, value); end

  sig do
    params(
      name: T.any(Symbol, String),
      value: T.untyped,
    ).returns(T::Boolean)
  end
  def update_column(name, value); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped]
    ).returns(T::Boolean)
  end
  def update_columns(attributes); end

  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(TrueClass)
  end
  def update!(attributes); end

  # update_attributes! is an alias of update!
  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(TrueClass)
  end
  def update_attributes!(attributes); end

  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(T::Boolean)
  end
  def update(attributes); end

  # update_attributes is an alias of update
  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(T::Boolean)
  end
  def update_attributes(attributes); end

  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(T::Boolean)
  end
  def update_attributes(attributes); end

  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).void
  end
  def assign_attributes(attributes); end
end

module ActiveRecord::Persistence::ClassMethods
  sig do
    params(
      attributes: T.nilable(T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )),
      blk: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.untyped)
  end
  def create!(attributes = nil, &blk); end

  sig do
    params(
      attributes: T.nilable(T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )),
      blk: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.untyped)
  end
  def create(attributes = nil, &blk); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.untyped)
  end
  def delete(id_or_array); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.untyped)
  end
  def destroy!(id_or_array); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.untyped)
  end
  def destroy(id_or_array); end

  sig do
    params(
      attributes: T::Array[T::Hash[T.any(Symbol, String), T.untyped]],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)]))
    ).returns(ActiveRecord::Result)
  end
  def insert_all!(attributes, returning: nil); end

  sig do
    params(
      attributes: T::Array[T::Hash[T.any(Symbol, String), T.untyped]],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def insert_all(attributes, returning: nil, unique_by: nil); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def insert!(attributes, returning: nil, unique_by: nil); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def insert(attributes, returning: nil, unique_by: nil); end

  sig { params(attributes: T.untyped, column_types: T::Hash[T.untyped, T.untyped], blk: T.proc.void).returns(T.untyped) }
  def instantiate(attributes, column_types = {}, &blk); end

  # The 'attributes' parameter can take either a hash or an array of hashes.
  sig do
    params(
      id: T.any(T.untyped, T::Array[T.untyped], Symbol),
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )
    ).returns(T.any(T::Array[T.untyped], T.untyped))
  end
  def update(id = :all, attributes); end

  sig do
    params(
      attributes: T::Array[T::Hash[T.any(Symbol, String), T.untyped]],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def upsert_all(attributes, returning: nil, unique_by: nil); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def upsert(attributes, returning: nil, unique_by: nil); end
end

class ActiveRecord::Result
  include(::Enumerable)
  Elem = type_member(fixed: T.untyped)

  def initialize(columns, rows, column_types = T.unsafe(nil)); end

  def [](idx); end
  def cast_values(type_overrides = T.unsafe(nil)); end
  def collect!; end
  def column_types; end
  def columns; end
  def each; end
  def empty?; end
  def first; end
  def includes_column?(name); end
  def last; end
  def length; end
  def map!; end
  def rows; end
  def to_a; end
  def to_ary; end
  def to_hash; end

  private

  def column_type(name, type_overrides = T.unsafe(nil)); end
  def hash_rows; end
  def initialize_copy(other); end
end

ActiveRecord::Type::BigInteger = ActiveModel::Type::BigInteger
ActiveRecord::Type::Binary = ActiveModel::Type::Binary
ActiveRecord::Type::Boolean = ActiveModel::Type::Boolean
ActiveRecord::Type::Boolean = ActiveModel::Type::Boolean
ActiveRecord::Type::Decimal = ActiveModel::Type::Decimal
ActiveRecord::Type::Float = ActiveModel::Type::Float
ActiveRecord::Type::Integer = ActiveModel::Type::Integer
ActiveRecord::Type::String = ActiveModel::Type::String
ActiveRecord::Type::String = ActiveModel::Type::String
ActiveRecord::Type::Value = ActiveModel::Type::Value
ActiveRecord::Type::Value = ActiveModel::Type::Value

module ActiveRecord::Type::Internal::Timezone
  def default_timezone; end
  def is_utc?; end
end

class ActiveRecord::Type::Date < ::ActiveModel::Type::Date
  include(::ActiveRecord::Type::Internal::Timezone)
end

class ActiveRecord::Type::DateTime < ::ActiveModel::Type::DateTime
  include(::ActiveRecord::Type::Internal::Timezone)
end

module ActiveRecord
  class ActiveRecordError < StandardError; end
  class AdapterNotFound < ActiveRecordError; end
  class AdapterNotSpecified < ActiveRecordError; end
  class AmbiguousSourceReflectionForThroughAssociation < ActiveRecordError; end
  class AssociationNotFoundError < ConfigurationError; end
  class AssociationTypeMismatch < ActiveRecordError; end
  class AttributeAssignmentError < ActiveRecordError; end
  class ConcurrentMigrationError < MigrationError; end
  class ConfigurationError < ActiveRecordError; end
  class ConnectionNotEstablished < ActiveRecordError; end
  class ConnectionTimeoutError < ConnectionNotEstablished; end
  class DangerousAttributeError < ActiveRecordError; end
  class Deadlocked < TransactionRollbackError; end
  class DeleteRestrictionError < ActiveRecordError; end
  class DuplicateMigrationNameError < MigrationError; end
  class DuplicateMigrationVersionError < MigrationError; end
  class EagerLoadPolymorphicError < ActiveRecordError; end
  class EnvironmentMismatchError < ActiveRecordError; end
  class ExclusiveConnectionTimeoutError < ConnectionTimeoutError; end
  class FixtureClassNotFound < ActiveRecordError; end
  class HasManyThroughAssociationNotFoundError < ActiveRecordError; end
  class HasManyThroughAssociationPointlessSourceTypeError < ActiveRecordError; end
  class HasManyThroughAssociationPolymorphicSourceError < ActiveRecordError; end
  class HasManyThroughAssociationPolymorphicThroughError < ActiveRecordError; end
  class HasManyThroughCantAssociateThroughHasOneOrManyReflection < ThroughCantAssociateThroughHasOneOrManyReflection; end
  class HasManyThroughNestedAssociationsAreReadonly < ThroughNestedAssociationsAreReadonly; end
  class HasManyThroughOrderError < ActiveRecordError; end
  class HasManyThroughSourceAssociationNotFoundError < ActiveRecordError; end
  class HasOneAssociationPolymorphicThroughError < ActiveRecordError; end
  class HasOneThroughCantAssociateThroughCollection < ActiveRecordError; end
  class HasOneThroughCantAssociateThroughHasOneOrManyReflection < ThroughCantAssociateThroughHasOneOrManyReflection; end
  class HasOneThroughNestedAssociationsAreReadonly < ThroughNestedAssociationsAreReadonly; end
  class IllegalMigrationNameError < MigrationError; end
  class ImmutableRelation < ActiveRecordError; end
  class InvalidForeignKey < WrappedDatabaseException; end
  class InverseOfAssociationNotFoundError < ActiveRecordError; end
  class IrreversibleMigration < MigrationError; end
  class IrreversibleOrderError < ActiveRecordError; end
  class LockWaitTimeout < StatementInvalid; end
  class MigrationError < ActiveRecordError; end
  class MismatchedForeignKey < StatementInvalid; end
  class MultiparameterAssignmentErrors < ActiveRecordError; end
  class NoDatabaseError < StatementInvalid; end
  class NoEnvironmentInSchemaError < MigrationError; end
  class NotNullViolation < StatementInvalid; end
  class PendingMigrationError < MigrationError; end
  class PreparedStatementCacheExpired < StatementInvalid; end
  class PreparedStatementInvalid < ActiveRecordError; end
  class ProtectedEnvironmentError < ActiveRecordError; end
  class QueryCanceled < StatementInvalid; end
  class RangeError < StatementInvalid; end
  class ReadOnlyRecord < ActiveRecordError; end

  class RecordInvalid < ActiveRecordError
    def record; end
  end

  class RecordNotDestroyed < ActiveRecordError; end
  class RecordNotFound < ActiveRecordError; end
  class RecordNotSaved < ActiveRecordError; end
  class RecordNotUnique < WrappedDatabaseException; end
  class Rollback < ActiveRecordError; end
  class SerializationFailure < TransactionRollbackError; end
  class SerializationTypeMismatch < ActiveRecordError; end
  class StaleObjectError < ActiveRecordError; end
  class StatementInvalid < ActiveRecordError; end
  class StatementTimeout < StatementInvalid; end
  class SubclassNotFound < ActiveRecordError; end
  class ThroughCantAssociateThroughHasOneOrManyReflection < ActiveRecordError; end
  class ThroughNestedAssociationsAreReadonly < ActiveRecordError; end
  class TransactionIsolationError < ActiveRecordError; end
  class TransactionRollbackError < StatementInvalid; end
  class TypeConflictError < StandardError; end
  UnknownAttributeError = ActiveModel::UnknownAttributeError
  class UnknownAttributeReference < ActiveRecordError; end
  class UnknownMigrationVersionError < MigrationError; end
  class UnknownPrimaryKey < ActiveRecordError; end
  class ValueTooLong < StatementInvalid; end
  class WrappedDatabaseException < StatementInvalid; end
end

class ActiveRecord::Schema < ActiveRecord::Migration::Current
  sig {params(info: T::Hash[T.untyped, T.untyped], blk: T.proc.bind(ActiveRecord::Schema).void).void}
  def self.define(info = nil, &blk); end
end

module ActiveRecord::AttributeMethods::Dirty
  extend T::Sig
  sig { params(attr_name: Symbol, options: T.untyped).returns(T::Boolean) }
  def saved_change_to_attribute?(attr_name, **options); end
end

module ActiveRecord::Associations
  mixes_in_class_methods(ActiveRecord::Associations::ClassMethods)
end

module ActiveRecord::Coders
end

class ActiveRecord::Coders::JSON
  class << self
    def dump(obj); end
    def load(json); end
  end
end

class ActiveRecord::Coders::YAMLColumn
  def initialize(attr_name, object_class = T.unsafe(nil)); end

  def assert_valid_value(obj, action:); end
  def dump(obj); end
  def load(yaml); end
  def object_class; end
  def object_class=(_); end

  private

  def check_arity_of_constructor; end
end

# Represents the schema of an SQL table in an abstract way. This class
# provides methods for manipulating the schema representation.
#
# Inside migration files, the `t` object in `create_table`
# is actually of this type:
#
# ```ruby
# class SomeMigration < ActiveRecord::Migration[5.0]
#   def up
#     create_table :foo do |t|
#       puts t.class  # => "ActiveRecord::ConnectionAdapters::TableDefinition"
#     end
#   end
#
#   def down
#     # ...
#   end
# end
# ```
class ActiveRecord::ConnectionAdapters::TableDefinition
  include ActiveRecord::ConnectionAdapters::ColumnMethods

  # Returns an array of ColumnDefinition objects for the columns of the table.
  sig { returns(T::Array[ActiveRecord::ConnectionAdapters::ColumnDefinition]) }
  def columns; end

  # Returns a ColumnDefinition for the column with name `name`.
  sig { params(name: T.any(String, Symbol)).returns(ActiveRecord::ConnectionAdapters::ColumnDefinition) }
  def [](name); end

  sig do
    params(
      name: T.any(String, Symbol),
      type: T.untyped,
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).returns(T.self_type)
  end
  def column(
    name,
    type,
    index: nil,
    default: nil,
    **options
  ); end

  # Remove the column `name` from the table.
  #
  # ```ruby
  # remove_column(:account_id)
  # ```
  sig { params(name: T.any(String, Symbol)).void }
  def remove_column(name); end

  # Adds index options to the indexes hash, keyed by column name
  # This is primarily used to track indexes that need to be created after the table
  #
  # ```ruby
  # index(:account_id, name: 'index_projects_on_account_id')
  # ```
  sig do
    params(
      column_name: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      options: T.untyped
    ).void
  end
  def index(column_name, options = {}); end

  # Appends `:datetime` columns `:created_at` and
  # `:updated_at` to the table.
  #
  # ```ruby
  # t.timestamps null: false
  # ```
  sig { params(options: T.untyped).void }
  def timestamps(**options); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # t.belongs_to(:supplier, foreign_key: true, type: :integer)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def references(*args, **options); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # t.belongs_to(:supplier, foreign_key: true, type: :integer)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def belongs_to(*args, **options); end
end

class ActiveRecord::ConnectionAdapters::Column
  def initialize(name, default, sql_type_metadata = T.unsafe(nil), null = T.unsafe(nil), default_function = T.unsafe(nil), collation: T.unsafe(nil), comment: T.unsafe(nil), **_); end

  def ==(other); end
  def bigint?; end
  def collation; end
  def comment; end
  def default; end
  def default_function; end
  def encode_with(coder); end
  def eql?(other); end
  def has_default?; end
  def hash; end
  def human_name; end
  def init_with(coder); end
  def limit(*_, &_); end
  def name; end
  def null; end
  def precision(*_, &_); end
  def scale(*_, &_); end
  def sql_type(*_, &_); end
  def sql_type_metadata; end
  def type(*_, &_); end
end

class ActiveRecord::ConnectionAdapters::ColumnDefinition < ::Struct
  Elem = type_member(fixed: T.untyped)

  def collation; end
  def collation=(value); end
  def comment; end
  def comment=(value); end
  def default; end
  def default=(value); end
  def limit; end
  def limit=(value); end
  def name; end
  def name=(_); end
  def null; end
  def null=(value); end
  def options; end
  def options=(_); end
  def precision; end
  def precision=(value); end
  def primary_key?; end
  def scale; end
  def scale=(value); end
  def sql_type; end
  def sql_type=(_); end
  def type; end
  def type=(_); end

  class << self
    def [](*_); end
    def inspect; end
    def members; end
    def new(*_); end
  end
end

module ActiveRecord::ConnectionAdapters::ColumnMethods
  # Appends a primary key definition to the table definition.
  # Can be called multiple times, but this is probably not a good idea.
  sig do
    params(
      name: T.any(String, Symbol),
      type: T.any(String, Symbol),
      options: T.untyped
    ).void
  end
  def primary_key(name, type = :primary_key, **options); end

  ########
  # NOTE: The following methods are all generated dynamically and have the same parameters.
  # See https://github.com/rails/rails/blob/v6.0.0/activerecord/lib/active_record/connection_adapters/abstract/schema_definitions.rb#L217
  ########

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def bigint(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def binary(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def boolean(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def date(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def datetime(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def decimal(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def numeric(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def float(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def integer(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def json(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def string(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def text(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def time(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def timestamp(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def virtual(*names, index: nil, default: nil, **options); end
end

class ActiveRecord::ConnectionAdapters::ConnectionHandler
  def initialize; end

  def active_connections?; end
  def clear_active_connections!; end
  def clear_all_connections!; end
  def clear_reloadable_connections!; end
  def connected?(spec_name); end
  def connection_pool_list; end
  def connection_pools; end
  def establish_connection(config); end
  def flush_idle_connections!; end
  def prevent_writes; end
  def prevent_writes=(prevent_writes); end
  def remove_connection(spec_name); end
  def retrieve_connection(spec_name); end
  def retrieve_connection_pool(spec_name); end
  def while_preventing_writes(enabled = T.unsafe(nil)); end

  private

  def owner_to_pool; end
  def pool_from_any_process_for(spec_name); end

  class << self
    def create_owner_to_pool; end
    def discard_unowned_pools(pid_map); end
    def unowned_pool_finalizer(pid_map); end
  end
end

# Represents an SQL table in an abstract way for updating a table.
#
# Available transformations are:
#
# ```ruby
# change_table :table do |t|
#   t.primary_key
#   t.column
#   t.index
#   t.rename_index
#   t.timestamps
#   t.change
#   t.change_default
#   t.rename
#   t.references
#   t.belongs_to
#   t.string
#   t.text
#   t.integer
#   t.bigint
#   t.float
#   t.decimal
#   t.numeric
#   t.datetime
#   t.timestamp
#   t.time
#   t.date
#   t.binary
#   t.boolean
#   t.foreign_key
#   t.json
#   t.virtual
#   t.remove
#   t.remove_foreign_key
#   t.remove_references
#   t.remove_belongs_to
#   t.remove_index
#   t.remove_timestamps
# end
# ```
class ActiveRecord::ConnectionAdapters::Table
  include ActiveRecord::ConnectionAdapters::ColumnMethods

  # Adds a new column to the named table.
  #
  # ```ruby
  # t.column(:name, :string)
  # ```
  sig { params(column_name: T.any(String, Symbol), type: Symbol, options: T.untyped).void }
  def column(column_name, type, **options); end

  # Checks to see if a column exists.
  #
  # ```ruby
  # t.string(:name) unless t.column_exists?(:name, :string)
  # ```
  sig { params(column_name: T.any(String, Symbol), type: Symbol, options: T.untyped).returns(T::Boolean) }
  def column_exists?(column_name, type = nil, options = {}); end

  # Adds a new index to the table. `column_name` can be a single Symbol, or
  # an Array of Symbols.
  #
  # ```ruby
  # t.index(:name)
  # t.index([:branch_id, :party_id], unique: true)
  # t.index([:branch_id, :party_id], unique: true, name: 'by_branch_party')
  # ```
  sig do
    params(
      column_name: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      options: T.untyped
    ).void
  end
  def index(column_name, options = {}); end

  # Checks to see if an index exists.
  #
  # ```ruby
  # unless t.index_exists?(:branch_id)
  #   t.index(:branch_id)
  # end
  # ```
  sig { params(column_name: T.any(String, Symbol), options: T.untyped).returns(T::Boolean) }
  def index_exists?(column_name, options = {}); end

  # Renames the given index on the table.
  #
  # ```ruby
  # t.rename_index(:user_id, :account_id)
  # ```
  sig { params(index_name: T.any(String, Symbol), new_index_name: T.any(String, Symbol)).void }
  def rename_index(index_name, new_index_name); end

  # Adds timestamps (`created_at` and `updated_at`) columns to the table.
  #
  # ```ruby
  # t.timestamps(null: false)
  # ```
  def timestamps(options = {}); end

  # Changes the column's definition according to the new options.
  #
  # ```ruby
  # t.change(:name, :string, limit: 80)
  # t.change(:description, :text)
  # ```
  sig { params(column_name: T.any(String, Symbol), type: Symbol, options: T.untyped).void }
  def change(column_name, type, options = {}); end

  # Sets a new default value for a column.
  #
  # ```ruby
  # t.change_default(:qualification, 'new')
  # t.change_default(:authorized, 1)
  # t.change_default(:status, from: nil, to: "draft")
  # ```
  sig { params(column_name: T.any(String, Symbol), default_or_changes: T.untyped).void }
  def change_default(column_name, default_or_changes); end

  # Removes the column(s) from the table definition.
  #
  # ```ruby
  # t.remove(:qualification)
  # t.remove(:qualification, :experience)
  # ```
  sig { params(column_names: T.any(String, Symbol)).void }
  def remove(*column_names); end

  # Removes the given index from the table.
  #
  # ```ruby
  # t.remove_index(:branch_id)
  # t.remove_index(column: [:branch_id, :party_id])
  # t.remove_index(name: :by_branch_party)
  # ```
  sig { params(options: T.untyped).void }
  def remove_index(options = {}); end

  # Removes the timestamp columns (`created_at` and `updated_at`) from the table.
  #
  # ```ruby
  # t.remove_timestamps
  # ```
  sig { params(options: T.untyped).void }
  def remove_timestamps(options = {}); end

  # Renames a column.
  #
  # ```ruby
  # t.rename(:description, :name)
  # ```
  sig { params(column_name: T.any(String, Symbol), new_column_name: T.any(String, Symbol)).void }
  def rename(column_name, new_column_name); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def references(*args, **options); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def belongs_to(*args, **options); end

  # Removes a reference. Optionally removes a `type` column.
  #
  # ```ruby
  # t.remove_references(:user)
  # t.remove_belongs_to(:supplier, polymorphic: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def remove_references(*args, **options); end

  # Removes a reference. Optionally removes a `type` column.
  #
  # ```ruby
  # t.remove_references(:user)
  # t.remove_belongs_to(:supplier, polymorphic: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def remove_belongs_to(*args, **options); end

  # Adds a foreign key to the table using a supplied table name.
  #
  # ```ruby
  # t.foreign_key(:authors)
  # t.foreign_key(:authors, column: :author_id, primary_key: "id")
  # ```
  sig { params(args: T.untyped).void }
  def foreign_key(*args); end

  # Removes the given foreign key from the table.
  #
  # ```ruby
  # t.remove_foreign_key(:authors)
  # t.remove_foreign_key(column: :author_id)
  # ```
  sig { params(args: T.untyped).void }
  def remove_foreign_key(*args); end

  # Checks to see if a foreign key exists.
  #
  # ```ruby
  # t.foreign_key(:authors) unless t.foreign_key_exists?(:authors)
  # ```
  sig { params(args: T.untyped).returns(T::Boolean) }
  def foreign_key_exists?(*args); end
end

class ActiveRecord::InternalMetadata < ::ActiveRecord::Base
  class << self
    def [](key); end
    def []=(key, value); end
    def _internal?; end
    def _validators; end
    def attribute_type_decorations; end
    def create_table; end
    def defined_enums; end
    def drop_table; end
    def page(num = T.unsafe(nil)); end
    def primary_key; end
    def table_exists?; end
    def table_name; end
  end
end

module ActiveRecord::Locking::Pessimistic
  # Returns `nil` if `ActiveRecord::Rollback` is raised.
  sig do
    type_parameters(:U)
      .params(
        lock: T.any(String, TrueClass),
        blk: T.proc.returns(T.type_parameter(:U)),
      )
      .returns(T.nilable(T.type_parameter(:U)))
  end
  def with_lock(lock = nil, &blk); end
end

class ActiveRecord::LogSubscriber < ::ActiveSupport::LogSubscriber
  def backtrace_cleaner; end
  def backtrace_cleaner=(val); end
  def backtrace_cleaner?; end
  def sql(event); end

  private

  def colorize_payload_name(name, payload_name); end
  def debug(progname = T.unsafe(nil), &block); end
  def extract_query_source_location(locations); end
  def log_query_source; end
  def logger; end
  def render_bind(attr, value); end
  def sql_color(sql); end
  def type_casted_binds(casted_binds); end

  class << self
    def backtrace_cleaner; end
    def backtrace_cleaner=(val); end
    def backtrace_cleaner?; end
    def reset_runtime; end
    def runtime; end
    def runtime=(value); end
  end
end

ActiveRecord::LogSubscriber::IGNORE_PAYLOAD_NAMES = T.let(T.unsafe(nil), T::Array[T.untyped])

class ActiveRecord::Associations::Preloader
  def preload(records, associations, preload_scope = T.unsafe(nil)); end

  private

  def grouped_records(association, records, polymorphic_parent); end
  def preloader_for(reflection, owners); end
  def preloaders_for_hash(association, records, scope, polymorphic_parent); end
  def preloaders_for_one(association, records, scope, polymorphic_parent); end
  def preloaders_for_reflection(reflection, records, scope); end
  def preloaders_on(association, records, scope, polymorphic_parent = T.unsafe(nil)); end
end

class ActiveRecord::Relation
  sig { returns(Integer) }
  def delete_all; end

  # Returns size of the records.
  sig { returns(Integer) }
  def size; end

  # Returns true if relation is blank.
  sig { returns(T::Boolean) }
  def blank?; end

  # Returns true if there are no records.
  sig { returns(T::Boolean) }
  def empty?; end

  # Returns true if there are no records.
  sig { returns(T::Boolean) }
  def none?; end

  # Returns true if there are any records.
  sig { returns(T::Boolean) }
  def any?; end

  # Returns true if there is exactly one record.
  sig { returns(T::Boolean) }
  def one?; end

  # Returns true if there is more than one record.
  sig { returns(T::Boolean) }
  def many?; end
end

module ActiveRecord::Store
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::Store::ClassMethods)

  private

  def read_store_attribute(store_attribute, key); end
  def store_accessor_for(store_attribute); end
  def write_store_attribute(store_attribute, key, value); end
end

module ActiveRecord::Store::ClassMethods
  def _store_accessors_module; end
  def store(store_attribute, options = T.unsafe(nil)); end
  def store_accessor(store_attribute, *keys, prefix: T.unsafe(nil), suffix: T.unsafe(nil)); end
  def stored_attributes; end
end

module ActiveRecord::Batches; end

class ActiveRecord::Batches::BatchEnumerator; end
