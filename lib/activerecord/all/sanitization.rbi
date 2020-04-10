# typed: strong

# https://github.com/rails/rails/blob/5-2-stable/activerecord/lib/active_record/sanitization.rb
module ActiveRecord::Sanitization::ClassMethods
  sig { params(condition: T.any(T.nilable(String), T::Array[T.untyped])).returns(T.nilable(String)) }
  def sanitize_sql_for_conditions(condition)
  end
  alias :sanitize_sql :sanitize_sql_for_conditions

  sig { params(assignments: T.any(T::Array[T.untyped], T::Hash[T.untyped, T.untyped], String), default_table_name: String).returns(String) }
  def sanitize_sql_for_assignment(assignments, default_table_name)
  end

  sig { params(condition: T.any(T::Array[T.untyped], String)).returns(String) }
  def sanitize_sql_for_order(condition)
  end

  sig { params(attrs: T::Hash[T.untyped, T.untyped], table: String).returns(String) }
  def sanitize_sql_hash_for_assignment(attrs, table)
  end

  sig { params(string: String, escape_character: String).returns(String) }
  def sanitize_sql_like(string, escape_character = "\\")
  end

  sig { params(ary: T::Array[T.untyped]).returns(String) }
  def sanitize_sql_array(ary)
  end
end
