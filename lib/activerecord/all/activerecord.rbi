# typed: strong

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
