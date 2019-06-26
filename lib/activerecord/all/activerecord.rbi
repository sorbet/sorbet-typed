# typed: strong

class ActiveRecord::Base
  sig do
    params(
      model: Symbol,
      autosave: T.nilable(T::Boolean),
      class_name: T.nilable(String),
      counter_cache: T.nilable(T.any(T::Boolean, Symbol)),
      dependent: T.nilable(Symbol),
      foreign_key: T.nilable(Symbol),
      primary_key: T.nilable(Symbol),
      inverse_of: T.nilable(Symbol),
      polymorphic: T.nilable(T::Boolean),
      touch: T.nilable(T.any(T::Boolean, Symbol)),
      validate: T.nilable(T::Boolean),
      optional: T.nilable(T::Boolean)
    ).void
  end
  def self.belongs_to(
    model,
    autosave: nil,
    class_name: nil,
    counter_cache: nil,
    dependent: nil,
    foreign_key: nil,
    primary_key: nil,
    inverse_of: nil,
    polymorphic: nil,
    touch: nil,
    validate: nil,
    optional: nil
  ); end

  sig { params(args: T.untyped).void }
  def self.before_create(args); end

  sig { params(args: T.untyped).void }
  def run_callbacks(args); end

  sig { params(args: T.untyped, kwargs: T.untyped).void }
  def self.validates(*args, **kwargs); end

  sig { params(args: T.untyped).void }
  def update(args); end

  sig { params(args: T.untyped, kwargs: T.untyped).void }
  def update!(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).void }
  def update_attributes(*args, **kwargs); end
end

class ActiveRecord::Schema
  sig {params(info: Hash, blk: T.proc.bind(ActiveRecord::Schema).void).void}
  def self.define(info = nil, &blk); end
end

class ActiveRecord::Migration::Current < ActiveRecord::Migration
  def change_column(table_name, column_name, type, options = nil); end
  def create_table(table_name, options = nil); end
end
