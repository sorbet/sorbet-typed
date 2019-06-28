# typed: strong

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
      polymorphic: T.nilable(T.any(Symbol, String)),
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

module ActiveRecord::Scoping::Named::ClassMethods
  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      body: T.proc.params(arg0: T.untyped).returns(T.untyped),
      blk: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
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
  extend ActiveRecord::Scoping::Named::ClassMethods
end

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

class ActiveRecord::Schema
  sig {params(info: Hash, blk: T.proc.bind(ActiveRecord::Schema).void).void}
  def self.define(info = nil, &blk); end
end

class ActiveRecord::Migration::Current < ActiveRecord::Migration
  def change_column(table_name, column_name, type, options = nil); end
  def create_table(table_name, options = nil); end
end

module ActiveRecord
  class ActiveRecordError < StandardError; end
  class SubclassNotFound < ActiveRecordError; end
  class AssociationTypeMismatch < ActiveRecordError; end
  class SerializationTypeMismatch < ActiveRecordError; end
  class AdapterNotSpecified < ActiveRecordError; end
  class TableNotSpecified < ActiveRecordError; end
  class AdapterNotFound < ActiveRecordError; end
  class ConnectionNotEstablished < ActiveRecordError; end
  class ReadOnlyError < ActiveRecordError; end
  class RecordNotFound < ActiveRecordError; end
  class RecordNotSaved < ActiveRecordError;end
  class RecordNotDestroyed < ActiveRecordError; end
  class StatementInvalid < ActiveRecordError; end
  class WrappedDatabaseException < StatementInvalid; end
  class RecordNotUnique < WrappedDatabaseException; end
  class InvalidForeignKey < WrappedDatabaseException; end
  class MismatchedForeignKey < StatementInvalid; end
  class NotNullViolation < StatementInvalid; end
  class ValueTooLong < StatementInvalid; end
  class RangeError < StatementInvalid; end
  class PreparedStatementInvalid < ActiveRecordError; end
  class NoDatabaseError < StatementInvalid; end
  class PreparedStatementCacheExpired < StatementInvalid; end
  class StaleObjectError < ActiveRecordError; end
  class ConfigurationError < ActiveRecordError; end
  class ReadOnlyRecord < ActiveRecordError; end
  class Rollback < ActiveRecordError; end
  class DangerousAttributeError < ActiveRecordError; end
  UnknownAttributeError = ActiveModel::UnknownAttributeError
  class AttributeAssignmentError < ActiveRecordError; end
  class MultiparameterAssignmentErrors < ActiveRecordError; end
  class UnknownPrimaryKey < ActiveRecordError; end
  class ImmutableRelation < ActiveRecordError; end
  class TransactionIsolationError < ActiveRecordError; end
  class TransactionRollbackError < StatementInvalid; end
  class SerializationFailure < TransactionRollbackError; end
  class Deadlocked < TransactionRollbackError; end
  class IrreversibleOrderError < ActiveRecordError; end
  class LockWaitTimeout < StatementInvalid; end
  class StatementTimeout < StatementInvalid; end
  class QueryCanceled < StatementInvalid; end
  class UnknownAttributeReference < ActiveRecordError; end
  class MigrationError < ActiveRecordError; end
  class IrreversibleMigration < MigrationError; end
  class DuplicateMigrationVersionError < MigrationError; end
  class MigrationError < ActiveRecordError; end
  class IrreversibleMigration < MigrationError; end
  class DuplicateMigrationVersionError < MigrationError; end
  class DuplicateMigrationNameError < MigrationError; end
  class UnknownMigrationVersionError < MigrationError; end
  class IllegalMigrationNameError < MigrationError; end
  class PendingMigrationError < MigrationError; end
  class ConcurrentMigrationError < MigrationError; end
  class NoEnvironmentInSchemaError < MigrationError; end
  class ProtectedEnvironmentError < ActiveRecordError; end
  class EnvironmentMismatchError < ActiveRecordError; end
end
