# typed: strong

module ActiveRecord::SaferMigrations
  sig { returns(Integer) }
  def self.default_lock_timeout; end

  sig { params(timeout_ms: Integer).returns(Integer) }
  def self.default_lock_timeout=(timeout_ms); end

  sig { returns(Integer) }
  def self.default_statement_timeout; end

  sig { params(timeout_ms: Integer).returns(Integer) }
  def self.default_statement_timeout=(timeout_ms); end
end

module ActiveRecord::SaferMigrations::Migration::ClassMethods
  sig { void }
  def disable_lock_timeout!; end

  sig { void }
  def disable_statement_timeout!; end

  sig { params(timeout_ms: Integer).void }
  def set_lock_timeout(timeout_ms); end

  sig { params(timeout_ms: Integer).void }
  def set_statement_timeout(timeout_ms); end
end

class ActiveRecord::Migration
  extend ActiveRecord::SaferMigrations::Migration::ClassMethods
end
