class ActiveRecord::Schema
  sig {params(info: Hash, blk: T.proc.bind(ActiveRecord::Schema).void).void}
  def self.define(info = nil, &blk); end
end

class ActiveRecord::Migration::Current < ActiveRecord::Migration
  def change_column(table_name, column_name, type, options = nil); end
  def create_table(table_name, options = nil); end
end

class ActiveRecord::Relation
  extend T::Sig
  extend T::Generic
  include Enumerable

  Elem = type_member

  sig{params(block: T.proc.params(e: Elem).void).void}
  def each(&block); end
end
