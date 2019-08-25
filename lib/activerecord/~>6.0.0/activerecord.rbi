# typed: strong

class ActiveRecord::Migration::Compatibility::V5_1 < ActiveRecord::Migration::Compatibility::V5_2; end

# 5.2 has a different definition for create_table because 6.0 adds a new option.
# This is the only difference between 5.2 and 6.0.
class ActiveRecord::Migration::Compatibility::V5_2 < ActiveRecord::Migration::Current
  # https://github.com/rails/rails/blob/v5.2.3/activerecord/lib/active_record/connection_adapters/abstract/schema_statements.rb#L151-L290
  sig do
    params(
      table_name: T.any(String, Symbol),
      comment: T.untyped,
      id: T.any(T::Boolean, Symbol),
      primary_key: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      options: T.untyped,
      temporary: T::Boolean,
      force: T.any(T::Boolean, Symbol),
      as: T.untyped,
      blk: T.nilable(T.proc.params(t: ActiveRecord::ConnectionAdapters::TableDefinition).void)
    ).void
  end
  def create_table(
    table_name,
    comment: nil,
    id: :primary_key,
    primary_key: :_,
    options: nil,
    temporary: false,
    force: false,
    as: nil,
    &blk
  ); end
end

ActiveRecord::Migration::Compatibility::V6_0 = ActiveRecord::Migration::Current

# Method definitions are documented here:
# https://api.rubyonrails.org/v6.0/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html
class ActiveRecord::Migration::Current < ActiveRecord::Migration
  # Tables

  # https://github.com/rails/rails/blob/v6.0.0/activerecord/lib/active_record/connection_adapters/abstract/schema_statements.rb#L152-L292
  sig do
    params(
      table_name: T.any(String, Symbol),
      comment: T.untyped,
      id: T.any(T::Boolean, Symbol),
      primary_key: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      options: T.untyped,
      temporary: T::Boolean,
      force: T.any(T::Boolean, Symbol),
      if_not_exists: T::Boolean,
      as: T.untyped,
      blk: T.nilable(T.proc.params(t: ActiveRecord::ConnectionAdapters::TableDefinition).void)
    ).void
  end
  def create_table(
    table_name,
    comment: nil,
    id: :primary_key,
    primary_key: :_,
    options: nil,
    temporary: false,
    force: false,
    if_not_exists: false,
    as: nil,
    &blk
  ); end

  sig do
    params(
      table_name: T.any(String, Symbol),
      bulk: T::Boolean,
      blk: T.nilable(T.proc.params(t: ActiveRecord::ConnectionAdapters::TableDefinition).void)
    ).void
  end
  def change_table(
    table_name,
    bulk: false,
    &blk
  ); end

  sig { params(table_name: T.any(String, Symbol), new_name: T.any(String, Symbol)).void }
  def rename_table(table_name, new_name); end

  sig do
    params(
      table_name: T.any(String, Symbol),
      force: T.any(T::Boolean, Symbol),
      if_exists: T::Boolean,
      blk: T.nilable(T.proc.params(t: ActiveRecord::ConnectionAdapters::TableDefinition).void)
    ).void
  end
  def drop_table(
    table_name,
    force: false,
    if_exists: false,
    &blk
  ); end

  # Join Tables

  sig do
    params(
      table_1: T.any(String, Symbol),
      table_2: T.any(String, Symbol),
      column_options: T.untyped,
      options: T.untyped,
      table_name: T.untyped,
      temporary: T.untyped,
      force: T::Boolean,
      blk: T.nilable(T.proc.params(t: ActiveRecord::ConnectionAdapters::TableDefinition).void)
    ).void
  end
  def create_join_table(
    table_1,
    table_2,
    column_options: {},
    options: nil,
    table_name: nil,
    temporary: nil,
    force: false,
    &blk
  ); end

  sig do
    params(
      table_1: T.any(String, Symbol),
      table_2: T.any(String, Symbol),
      options: T.untyped,
      blk: T.nilable(T.proc.params(t: ActiveRecord::ConnectionAdapters::TableDefinition).void)
    ).void
  end
  def drop_join_table(
    table_1,
    table_2,
    options = {},
    &blk
  ); end

  # Columns

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      type: T.untyped,
      limit: T.untyped,
      default: T.untyped,
      null: T.untyped,
      precision: T.untyped,
      scale: T.untyped,
      comment: T.untyped
    ).void
  end
  def add_column(
    table_name,
    column_name,
    type,
    limit: nil,
    default: nil,
    null: nil,
    precision: nil,
    scale: nil,
    comment: nil
  ); end

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      type: T.untyped,
      limit: T.untyped,
      default: T.untyped,
      null: T.untyped,
      precision: T.untyped,
      scale: T.untyped,
      comment: T.untyped
    ).void
  end
  def change_column(
    table_name,
    column_name,
    type,
    limit: nil,
    default: nil,
    null: nil,
    precision: nil,
    scale: nil,
    comment: nil
  ); end

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      null: T.untyped,
      default: T.untyped
    ).void
  end
  def change_column_null(table_name, column_name, null, default = nil); end

  sig { params(table_name: T.untyped, column_name: T.untyped, default_or_changes: T.untyped).void }
  def change_column_default(table_name, column_name, default_or_changes); end

  sig { params(table_name: T.untyped, column_name: T.untyped, new_column_name: T.untyped).void }
  def rename_column(table_name, column_name, new_column_name); end

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      type: T.untyped,
      options: T.untyped
    ).void
  end
  def remove_column(
    table_name,
    column_name,
    type = nil,
    options = {}
  ); end

  sig { params(table_name: T.any(String, Symbol), column_names: T.untyped).void }
  def remove_columns(table_name, *column_names); end

  # Foreign Keys

  sig do
    params(
      from_table: T.untyped,
      to_table: T.untyped,
      column: T.untyped,
      primary_key: T.untyped,
      name: T.untyped,
      on_delete: T.untyped,
      on_update: T.untyped,
      validate: T.untyped
    ).void
  end
  def add_foreign_key(
    from_table,
    to_table,
    column: nil,
    primary_key: nil,
    name: nil,
    on_delete: nil,
    on_update: nil,
    validate: nil
  ); end

  sig do
    params(
      from_table: T.untyped,
      to_table: T.untyped,
      column: T.untyped,
      primary_key: T.untyped,
      name: T.untyped,
      on_delete: T.untyped,
      on_update: T.untyped,
      validate: T.untyped
    ).void
  end
  def remove_foreign_key(
    from_table,
    to_table,
    column: nil,
    primary_key: nil,
    name: nil,
    on_delete: nil,
    on_update: nil,
    validate: nil
  ); end

  # Indices

  sig do
    params(
      table_name: T.untyped,
      column_name: T.untyped,
      using: T.untyped,
      unique: T.nilable(T::Boolean),
      where: T.untyped,
      order: T.untyped,
      name: T.untyped,
      length: T.untyped,
      opclass: T.untyped,
      type: T.untyped,
      internal: T.untyped,
      algorithm: T.untyped
    ).void
  end
  def add_index(
    table_name,
    column_name,
    using: nil,
    unique: nil,
    where: nil,
    order: nil,
    name: nil,
    length: nil,
    opclass: nil,
    type: nil,
    internal: nil,
    algorithm: nil
  ); end

  sig do
    params(
      table_name: Symbol,
      column: T.any(Symbol, T::Array[Symbol]),
      name: T.nilable(Symbol)
    ).void
  end
  def remove_index(
    table_name,
    column,
    name: nil
  ); end

  sig do
    params(
      table_name: T.any(String, Symbol),
      old_name: T.any(String, Symbol),
      new_name: T.any(String, Symbol)
    ).void
  end
  def rename_index(
    table_name,
    old_name,
    new_name
  ); end

  # References

  sig do
    params(
      table_name: T.any(String, Symbol),
      ref_name: T.untyped,
      type: T.untyped,
      index: T.untyped,
      foreign_key: T.untyped,
      polymorphic: T.untyped,
      null: T.untyped
    ).void
  end
  def add_reference(
    table_name,
    ref_name,
    type: nil,
    index: nil,
    foreign_key: nil,
    polymorphic: nil,
    null: nil
  ); end

  sig do
    params(
      table_name: T.any(String, Symbol),
      ref_name: T.untyped,
      foreign_key: T.untyped,
      polymorphic: T.untyped,
      index: T.untyped
    ).void
  end
  def remove_reference(
    table_name,
    ref_name,
    foreign_key: false,
    polymorphic: false,
    index: nil
  ); end

  # Timestamps

  sig { params(table_name: T.any(String, Symbol), options: T.untyped).void }
  def add_timestamps(table_name, options = {}); end

  sig { params(table_name: T.any(String, Symbol), options: T.untyped).void }
  def remove_timestamps(table_name, options = {}); end

  # Extensions

  sig { params(name: T.any(String, Symbol)).void }
  def enable_extension(name); end

  sig { params(name: T.any(String, Symbol)).void }
  def disable_extension(name); end

  # Miscellaneous

  sig { params(message: String, subitem: T.untyped).void }
  def say(message, subitem = false); end

  sig { params(message: String).returns(T.untyped) }
  def say_with_time(message); end

  sig { void }
  def suppress_messages; end

  sig { returns(T.untyped) }
  def reversible(); end

  sig { params(migration_classes: T.untyped).returns(T.untyped) }
  def revert(*migration_classes); end

  sig { params(sql: String, name: T.nilable(String)).returns(T.untyped) }
  def execute(sql, name = nil); end
end
