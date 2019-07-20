# typed: strong

module Lhm
  sig { returns(Lhm::Connection) }
  def adapter; end

  sig do
    params(
      table_name: T.any(String, Symbol),
      options: T::Hash[Symbol, T.untyped],
      block: T.proc.params(arg0: Lhm::Migrator).void
    ).returns(TrueClass)
  end
  def change_table(table_name, options = nil, &block); end

  sig do
    params(
      run: T.nilable(T::Boolean),
      options: T.nilable(T::Hash[Symbol, T.untyped])
    ).returns(T::Boolean)
  end
  def cleanup(run = nil, options = nil); end

  sig { returns(Lhm::Connection) }
  def connection; end

  sig { returns(Logger) }
  def self.logger; end

  sig { params(new_logger: Logger).returns(Logger) }
  def self.logger=(new_logger); end

  sig do
    params(adapter: Lhm::Connection)
      .returns(Lhm::Connection)
  end
  def setup(adapter); end

  extend Lhm
  extend Lhm::Throttler
end

module Lhm::SqlHelper
  def annotation; end
  def column_definition(cols); end
  def idx_name(table_name, cols); end
  def idx_spec(cols); end
  def struct_key(struct, key); end
  def supports_atomic_switch?; end
  def tagged(statement); end
  def version_string; end
  extend Lhm::SqlHelper
end

class Lhm::Table
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def columns; end

  sig { returns(T.untyped) }
  def ddl; end

  sig { returns(String) }
  def destination_name; end

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def indices; end

  sig do
    params(
      name: T.any(String, Symbol),
      pk: T.nilable(T.any(String, Symbol)),
      ddl: T.untyped
    ).void
  end
  def initialize(name, pk = nil, ddl = nil); end

  sig { returns(T.any(String, Symbol)) }
  def name; end

  sig { returns(T.any(String, Symbol)) }
  def pk; end

  sig { returns(T.nilable(T::Boolean)) }
  def satisfies_primary_key?; end

  sig do
    params(
      table_name: T.any(Symbol, String),
      connection: Lhm::Connection
    ).returns(Lhm::Table)
  end
  def self.parse(table_name, connection); end
end

class Lhm::Table::Parser
  def ddl; end
  private def extract_indices(indices); end
  private def extract_primary_key(schema); end
  def initialize(table_name, connection); end
  def parse; end
  private def read_indices; end
  private def read_information_schema; end
  include Lhm::SqlHelper
end

class Lhm::Error < StandardError
end

module Lhm::Command
  private def after; end
  private def before; end
  private def error(msg); end
  private def execute; end
  private def revert; end

  sig { params(block: T.nilable(T.proc.params(arg0: Lhm::Command).void)).void }
  def run(&block); end

  private def validate; end
end

module Lhm::Printer
end

class Lhm::Printer::Output
  sig { params(message: String).void }
  def write(message); end
end

class Lhm::Printer::Base
  sig { void }
  def initialize; end
end

class Lhm::Printer::Percentage < Lhm::Printer::Base
  sig { void }
  def end; end

  sig { void }
  def initialize; end

  sig { params(lowest: Numeric, highest: T.nilable(Numeric)).void }
  def notify(lowest, highest); end

  private def write(message); end
end

class Lhm::Printer::Dot < Lhm::Printer::Base
  sig { void }
  def end; end

  sig { params(lowest: T.nilable(Numeric), highest: T.nilable(Numeric)).void }
  def notify(lowest = nil, highest = nil); end
end

class Lhm::Chunker
  private def bottom; end
  private def conditions; end
  def connection; end
  private def copy(lowest, highest); end
  private def destination_columns; end
  private def destination_name; end
  def execute; end
  def initialize(migration, connection = nil, options = nil); end
  private def origin_columns; end
  private def origin_name; end
  private def select_limit; end
  private def select_start; end
  private def top(stride); end
  private def validate; end
  include Lhm::Command
  include Lhm::SqlHelper
end

class Lhm::Entangler
  def after; end
  def before; end
  def connection; end
  def create_delete_trigger; end
  def create_insert_trigger; end
  def create_update_trigger; end
  def entangle; end
  def initialize(migration, connection = nil); end
  def revert; end
  def strip(sql); end
  def trigger(type); end
  def untangle; end
  def validate; end
  include Lhm::Command
  include Lhm::SqlHelper
end

class Lhm::Intersection
  def common; end
  def destination; end
  def initialize(origin, destination, renames = nil); end
  def origin; end
end

module Lhm::Intersection::Joiners
  def escaped; end
  def joined; end
  def qualified(name, type); end
  def tick(name); end
  def typed(type); end
end

class Lhm::Migration
  def archive_name; end
  def conditions; end
  def destination; end
  def initialize(origin, destination, conditions = nil, renames = nil, time = nil); end
  def intersection; end
  def origin; end
  def renames; end
  def startstamp; end
end

class Lhm::AtomicSwitcher
  def atomic_switch; end
  def connection; end
  def execute; end
  def initialize(migration, connection = nil); end
  def statements; end
  def validate; end
  include Lhm::Command
end

class Lhm::LockedSwitcher
  def connection; end
  def execute; end
  def initialize(migration, connection = nil); end
  def revert; end
  def statements; end
  def switch; end
  def uncommitted(&block); end
  def validate; end
  include Lhm::Command
  include Lhm::SqlHelper
end

class Lhm::Migrator
  sig do
    params(
      name: T.any(String, Symbol),
      definition: T.any(String, Symbol)
    ).void
  end
  def add_column(name, definition); end

  sig do
    params(
      columns: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      index_name: T.nilable(String, Symbol)
    ).void
  end
  def add_index(columns, index_name = nil); end

  sig do
    params(
      columns: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      index_name: T.nilable(String, Symbol)
    ).void
  end
  def add_unique_index(columns, index_name = nil); end

  private def assert_valid_idx_name(index_name); end

  sig do
    params(
      name: T.any(String, Symbol),
      definition: T.any(String, Symbol)
    ).void
  end
  def change_column(name, definition); end

  sig { returns(T::Array[String]) }
  def conditions; end

  sig { returns(T.nilable(Lhm::Connection)) }
  def connection; end

  sig { params(statement: String).void }
  def ddl(statement); end

  private def destination_create; end
  private def destination_read; end
  private def execute; end

  sig { params(sql: String).returns(String) }
  def filter(sql); end

  private def index_ddl(cols, unique = nil, index_name = nil); end

  sig do
    params(
      table: Lhm::Table,
      connection: T.nilable(
        Lhm::Connection
      )
    ).void
  end
  def initialize(table, connection = nil); end

  sig { returns(String) }
  def name; end

  sig { params(name: T.any(String, Symbol)).void }
  def remove_column(name); end

  sig do
    params(
      columns: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      index_name: T.nilable(String, Symbol)
    ).void
  end
  def remove_index(columns, index_name = nil); end

  sig do
    params(
      old: T.any(String, Symbol),
      nu:  T.any(String, Symbol)
    ).void
  end
  def rename_column(old, nu); end

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def renames; end

  sig { returns(T::Array[String]) }
  def statements; end

  private def validate; end

  include Lhm::Command
  include Lhm::SqlHelper
end

class Lhm::Invoker
  def connection; end
  def initialize(origin, connection); end
  def migrator; end
  def normalize_options(options); end
  def run(options = nil); end
  include Lhm::SqlHelper
end

class Lhm::Connection
  def self.new(adapter); end
end

class Lhm::Connection::DataMapperConnection
  def current_database; end
  def destination_create(origin); end
  def execute(sql); end
  def initialize(adapter); end
  def quote_value(value); end
  def quoter; end
  def select_all(sql); end
  def select_one(sql); end
  def select_value(sql); end
  def select_values(sql); end
  def show_create(table_name); end
  def sql(statements); end
  def table_exists?(table_name); end
  def update(statements); end
  include Lhm::SqlHelper
end

class Lhm::Connection::ActiveRecordConnection
  def current_database; end
  def destination_create(origin); end
  def execute(sql); end
  def initialize(adapter); end
  def quote_value(value); end
  def select_all(sql); end
  def select_one(sql); end
  def select_value(sql); end
  def select_values(sql); end
  def show_create(table_name); end
  def sql(statements); end
  def table_exists?(table_name); end
  def update(sql); end
  include Lhm::SqlHelper
end

module Lhm::Throttler
  sig do
    params(
      type: T.any(Lhm::Command, Symbol, String, Class),
      options: T.nilable(T::Hash[T.untyped, T.untyped])
    ).void
  end
  def setup_throttler(type, options = nil); end

  sig { returns(T.self_type) }
  def throttler; end
end

class Lhm::Throttler::Time
  sig { void }
  def execute; end

  sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).void }
  def initialize(options = nil); end

  sig { returns(Integer) }
  def stride; end

  sig { params(arg0: Integer).returns(Integer) }
  def stride=(arg0); end

  sig { returns(Numeric) }
  def timeout_seconds; end

  sig { params(arg0: Numeric).returns(Numeric) }
  def timeout_seconds=(arg0); end

  include Lhm::Command
end

class Lhm::Throttler::LegacyTime < Lhm::Throttler::Time
  sig { params(timeout: T.nilable(Numeric), stride: T.nilable(Integer)).void }
  def initialize(timeout, stride); end
end

class Lhm::Throttler::Factory
  sig do
    params(
      type: T.any(Lhm::Command, Symbol, String, Class),
      options: T.nilable(T::Hash[T.untyped, T.untyped])
    ).returns(T.untyped)
  end
  def self.create_throttler(type, options = nil); end
end
