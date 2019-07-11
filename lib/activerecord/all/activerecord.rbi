# typed: strong

VariadicUntypedFunction = T.type_alias(
  T.any(
    T.proc.returns(T.untyped),
    T.proc.params(arg0: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped, arg5: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped, arg5: T.untyped, arg6: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped, arg5: T.untyped, arg6: T.untyped, arg7: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped, arg5: T.untyped, arg6: T.untyped, arg7: T.untyped, arg8: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped, arg5: T.untyped, arg6: T.untyped, arg7: T.untyped, arg8: T.untyped, arg9: T.untyped).returns(T.untyped)
    # Currently Sorbet is limited to procs with 9 args: https://github.com/sorbet/sorbet/blob/df6085e6ae9846f033064513ea14f069c68b0bf9/core/SymbolRef.h#L387
  )
)

module ActiveRecord::Associations::ClassMethods
  sig do
    params(
      name: Symbol,
      scope: T.nilable(T.proc.void),
      after_add: T.nilable(T.any(Symbol, String, T.proc.void)),
      after_remove: T.nilable(T.any(Symbol, String, T.proc.void)),
      anonymous_class: T.nilable(T.any(Symbol, String)),
      as: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      before_add: T.nilable(T.any(Symbol, String, T.proc.void)),
      before_remove: T.nilable(T.any(Symbol, String, T.proc.void)),
      class_name: T.nilable(T.any(Symbol, String)),
      counter_cache: T.nilable(T.any(Symbol, String)),
      dependent: T.nilable(T.any(Symbol, String)),
      extend: T.nilable(T.any(Module, T::Array[Module])),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      index_errors: T.nilable(T::Boolean),
      inverse_of: T.nilable(T.any(Symbol, String)),
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
      inverse_of: T.nilable(T.any(Symbol, String)),
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
      counter_cache: T.nilable(T::Boolean),
      dependent: T.nilable(T.any(Symbol, String)),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      inverse_of: T.nilable(T.any(Symbol, String)),
      optional: T.nilable(T::Boolean),
      polymorphic: T.nilable(T.any(Symbol, String, T::Boolean)),
      primary_key: T.nilable(T.any(Symbol, String)),
      required: T.nilable(T::Boolean),
      touch: T.nilable(T::Boolean),
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
      after_add: T.nilable(T.any(Symbol, String, T.proc.void)),
      after_remove: T.nilable(T.any(Symbol, String, T.proc.void)),
      association_foreign_key: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      before_add: T.nilable(T.any(Symbol, String, T.proc.void)),
      before_remove: T.nilable(T.any(Symbol, String, T.proc.void)),
      blk: T.nilable(T.proc.void),
      class_name: T.nilable(T.any(Symbol, String)),
      extend: T.nilable(T.any(Module, T::Array[Module])),
      foreign_key: T.nilable(T.any(Symbol, String)),
      join_table: T.nilable(T.any(Symbol, String)),
      validate: T.nilable(T::Boolean),
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

module ActiveRecord::Scoping::Named::ClassMethods
  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      body: VariadicUntypedFunction,
      blk: T.nilable(VariadicUntypedFunction)
    ).void
  end
  def scope(
    name,
    body,
    &blk
  ); end
end

class ActiveRecord::Base
  extend ActiveRecord::Associations::ClassMethods
  extend ActiveRecord::Inheritance::ClassMethods
  extend ActiveRecord::Scoping::Named::ClassMethods
  extend ActiveRecord::NestedAttributes::ClassMethods
  extend ActiveRecord::Persistence::ClassMethods

  sig do
    params(
      arg: Symbol,
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(Symbol),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_validation(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.before_destroy(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
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
      if: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(Symbol)
    ).void
  end
  def self.before_validation(
    arg = nil,
    if: nil,
    unless: nil,
    on: nil
  ); end

  sig do
    params(
      names: T.any(T::Array[Symbol], Symbol),
      presence: T.nilable(T::Boolean),
      inclusion: T.any(
        T::Array[T.any(String, Symbol)],
        { in: T::Array[T.any(Symbol, String, T::Boolean, NilClass)]}
      ),
      unless: T.nilable(Symbol),
      if: T.nilable(Symbol),
      allow_nil: T.nilable(T::Boolean),
      on: T.nilable(Symbol)
    ).void
  end
  def self.validates(
    *names,
    presence: nil,
    inclusion: nil,
    on: nil,
    unless: nil,
    if: nil,
    allow_nil: nil
  )
  end

  sig do
    params(
      names: T.any(T::Array[Symbol], Symbol),
      presence: T.nilable(T::Boolean),
      inclusion: T.any(
        T::Array[T.any(String, Symbol)],
        { in: T::Array[T.any(Symbol, String, T::Boolean, NilClass)]}
      ),
      unless: T.nilable(Symbol),
      if: T.nilable(Symbol),
      allow_nil: T.nilable(T::Boolean),
      on: T.nilable(Symbol)
    ).void
  end
  def self.validate(
    *names,
    presence: nil,
    inclusion: nil,
    on: nil,
    unless: nil,
    if: nil,
    allow_nil: nil
  )
  end

  sig do
    params(
      name: Symbol,
      type: T.class_of(Hash),
    ).void
  end
  def self.serialize(
    name,
    type
  )
  end
end

module ActiveRecord::Inheritance::ClassMethods
  sig { params(value: T::Boolean).void }
  def abstract_class=(value); end

  sig { returns(T::Boolean) }
  def abstract_class; end
end

module ActiveRecord::Persistence
  mixes_in_class_methods(ActiveRecord::Persistence::ClassMethods)
end

module ActiveRecord::Persistence::ClassMethods
  sig { params(klass: Class).returns(Class) }
  def becomes!(klass); end

  sig { params(klass: Class).returns(Class) }
  def becomes(klass); end

  sig do
    params(
      attributes: T.nilable(T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )),
      blk: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.any(Array, T.self_type))
  end
  def create!(attributes = nil, &blk); end

  sig do
    params(
      attributes: T.nilable(T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )),
      blk: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.any(Array, T.self_type))
  end
  def create(attributes = nil, &blk); end

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

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.self_type)
  end
  def delete(id_or_array); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.self_type)
  end
  def destroy!(id_or_array); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.self_type)
  end
  def destroy(id_or_array); end

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

  def instantiate(attributes, column_types = {}, &blk); end

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
      blk: T.proc.void,
    ).returns(T::Boolean)
  end
  def save!(*args, &blk); end

  sig do
    params(
      args: T.untyped,
      blk: T.proc.void,
    ).returns(T::Boolean)
  end
  def save(*args, &blk); end

  sig { params(attribute: T.any(Symbol, String)).returns(T.self_type) }
  def toggle!(attribute); end

  sig { params(attribute: T.any(Symbol, String)).returns(T::Boolean) }
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
      attributes: T::Hash[T.any(Symbol, String), T.untyped]
    ).returns(T::Boolean)
  end
  def update!(attributes); end

  sig do
    params(
      id: T.any(T.untyped, T::Array[T.untyped], Symbol),
      attributes: T::Hash[T.any(Symbol, String), T.untyped]
    ).returns(T.any(Array, T.self_type))
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

  alias update_attributes update
  alias update_attributes! update!
end

class ActiveRecord::Result; end

class ActiveRecord::Type::Value
  extend T::Sig

  sig { params(args: T.untyped).void }
  def initialize(args); end

  sig { params(value: T.untyped).returns(T.untyped) }
  def cast(value); end
end

class ActiveRecord::Type::Boolean < ActiveRecord::Type::Value
  extend T::Sig

  sig { params(args: T.untyped).void }
  def initialize(args = nil); end

  sig { params(value: T.untyped).returns(T.nilable(T::Boolean)) }
  def cast(value: T.untyped); end
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
  class RecordInvalid < ActiveRecordError; end
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
  class UnknownAttributeError < NoMethodError; end
  class UnknownAttributeReference < ActiveRecordError; end
  class UnknownMigrationVersionError < MigrationError; end
  class UnknownPrimaryKey < ActiveRecordError; end
  class ValueTooLong < StatementInvalid; end
  class WrappedDatabaseException < StatementInvalid; end
end

class ActiveRecord::Schema
  sig {params(info: Hash, blk: T.proc.bind(ActiveRecord::Schema).void).void}
  def self.define(info = nil, &blk); end
end

class ActiveRecord::Migration::Current < ActiveRecord::Migration
  def change_column(table_name, column_name, type, options = nil); end
  def create_table(table_name, options = nil); end
end

module ActiveRecord::AttributeMethods::Dirty
  extend T::Sig
  sig { params(attr_name: Symbol, options: T.untyped).returns(T::Boolean) }
  def saved_change_to_attribute?(attr_name, **options); end
end
