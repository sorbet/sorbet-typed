# typed: stict

class ActiveRecord::Base
  include ActiveRecord::Sanitization
  extend ActiveRecord::Sanitization::ClassMethods # via ActiveRecord::Sanitization concern
end

# @see https://github.com/rails/rails/blob/eca6c273fe2729b9634907562c2717cf86443b6b/activerecord/lib/active_record/sanitization.rb
module ActiveRecord::Sanitization::ClassMethods
  sig { params(condition: T.any(T.nilable(String), Array)).returns(T.nilable(String)) }
  def sanitize_sql_for_conditions(condition)
  end
  alias :sanitize_sql :sanitize_sql_for_conditions

  sig { params(assignments: T.any(Array, Hash, String), default_table_name: String).returns(String) }
  def sanitize_sql_for_assignment(assignments, default_table_name)
  end

  sig { params(condition: T.any(Array, String)).returns(String) }
  def sanitize_sql_for_order(condition)
  end

  sig { params(attrs: Hash, table: String).returns(String) }
  def sanitize_sql_hash_for_assignment(attrs, table)
  end

  sig { params(string: String, escape_character: String).returns(String) }
  def sanitize_sql_like(string, escape_character = "\\")
  end

  sig { params(ary: Array).returns(String) }
  def sanitize_sql_array(ary)
  end
end
