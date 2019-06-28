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
  extend ActiveRecord::Inheritance::ClassMethods
  extend ActiveRecord::Scoping::Named::ClassMethods
end

module ActiveRecord::Inheritance::ClassMethods
  sig { params(value: T::Boolean).void }
  def abstract_class=(value); end

  sig { returns(T::Boolean) }
  def abstract_class; end
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
