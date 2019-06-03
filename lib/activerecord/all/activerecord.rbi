# typed: strong

class ActiveRecord::Base
  sig do
    params(
      model: Symbol,
      autosave: T::Boolean,
      class_name: String,
      counter_cache: T.any(T::Boolean, Symbol),
      dependent: Symbol,
      foreign_key: Symbol,
      primary_key: Symbol,
      inverse_of: Symbol,
      polymorphic: T::Boolean,
      touch: T.any(T::Boolean, Symbol),
      validate: T::Boolean,
      optional: T::Boolean
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
end

class ActiveRecord::Schema
  sig {params(info: Hash, blk: T.proc.bind(ActiveRecord::Schema).void).void}
  def self.define(info = nil, &blk); end
end

class ActiveRecord::Migration::Current < ActiveRecord::Migration
  def change_column(table_name, column_name, type, options = nil); end
  def create_table(table_name, options = nil); end
end
