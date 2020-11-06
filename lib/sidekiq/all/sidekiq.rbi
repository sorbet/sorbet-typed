# typed: strong

module Sidekiq
  class << self
    def average_scheduled_poll_interval=(interval); end
    def client_middleware; end
    def configure_client; end
    def configure_server; end
    def death_handlers; end
    def default_retries_exhausted=(prok); end
    def default_server_middleware; end
    def default_worker_options; end
    def default_worker_options=(hash); end
    def dump_json(object); end
    def error_handlers; end
    def load_json(string); end
    def logger; end
    def logger=(log); end
    def on(event, &block); end
    def options; end
    def options=(opts); end
    def redis; end
    def redis=(hash); end
    def redis_info; end
    def redis_pool; end
    def server?; end
    def server_middleware; end
  end
end

class Sidekiq::CLI
  sig { returns(Sidekiq::CLI) }
  def self.instance; end

  sig { returns(Sidekiq::Launcher) }
  def launcher; end
end

class Sidekiq::Client
  def initialize(redis_pool = T.unsafe(nil)); end

  def middleware(&block); end
  def push(item); end
  def push_bulk(items); end
  def redis_pool; end
  def redis_pool=(_); end

  private

  def atomic_push(conn, payloads); end
  def normalize_item(item); end
  def normalized_hash(item_class); end
  def process_single(worker_class, item); end

  class << self
    def enqueue(klass, *args); end
    def enqueue_in(interval, klass, *args); end
    def enqueue_to(queue, klass, *args); end
    def enqueue_to_in(queue, interval, klass, *args); end
    def push(item); end
    def push_bulk(items); end
    def via(pool); end
  end
end

Sidekiq::DEFAULTS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

Sidekiq::DEFAULT_WORKER_OPTIONS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

class Sidekiq::DeadSet < ::Sidekiq::JobSet
  Elem = type_member(fixed: Sidekiq::SortedEntry)

  def initialize; end

  def kill(message, opts = T.unsafe(nil)); end
  def retry_all; end

  class << self
    def max_jobs; end
    def timeout; end
  end
end

class Sidekiq::EmptyQueueError < ::RuntimeError
end

module Sidekiq::ExceptionHandler
  def handle_exception(ex, ctxHash = T.unsafe(nil)); end
end

class Sidekiq::ExceptionHandler::Logger
  def call(ex, ctxHash); end
end

module Sidekiq::Extensions
  class << self
    def enable_delay!; end
  end
end

module Sidekiq::Extensions::ActionMailer
  # If you use Rails and use `SomeMailer.delay` add the following to your local RBI:
  # class ActionMailer::Base
  #   extend Sidekiq::Extensions::ActionMailer
  # end

  def delay(options = {}); end
  def delay_for(interval, options = {}); end
  def delay_until(timestamp, options = {}); end
  def sidekiq_delay(options = {}); end
  def sidekiq_delay_for(interval, options = {}); end
  def sidekiq_delay_until(timestamp, options = {}); end
end

module Sidekiq::Extensions::ActiveRecord
  # If you use Rails and use `SomeModel.delay` add the following to your local RBI:
  # class ActiveRecord::Base
  #   extend Sidekiq::Extensions::ActionMailer
  # end

  def delay(options = {}); end
  def delay_for(interval, options = {}); end
  def delay_until(timestamp, options = {}); end
  def sidekiq_delay(options = {}); end
  def sidekiq_delay_for(interval, options = {}); end
  def sidekiq_delay_until(timestamp, options = {}); end
end

class Sidekiq::Extensions::DelayedClass
  include(::Sidekiq::Worker)

  def perform(yml); end
end

class Sidekiq::Extensions::DelayedMailer
  include(::Sidekiq::Worker)

  def perform(yml); end
end

class Sidekiq::Extensions::DelayedModel
  include(::Sidekiq::Worker)

  def perform(yml); end
end

module Sidekiq::Extensions::Klass
  # If you use Rails and use `SomeClass.delay` add the following to your local RBI:
  # class Module
  #   include Sidekiq::Extensions::Klass
  # end

  def delay(options = {}); end
  def delay_for(interval, options = {}); end
  def delay_until(timestamp, options = {}); end
  def sidekiq_delay(options = {}); end
  def sidekiq_delay_for(interval, options = {}); end
  def sidekiq_delay_until(timestamp, options = {}); end
end

class Sidekiq::Extensions::Proxy < BasicObject
  def initialize(performable, target, options = {}); end

  def method_missing(name, *args); end
end

Sidekiq::Extensions::Proxy::SIZE_LIMIT = T.let(T.unsafe(nil), Integer)

module Sidekiq::Extensions::PsychAutoload
  def resolve_class(klass_name); end
end

Sidekiq::FAKE_INFO = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

class Sidekiq::Job
  def initialize(item, queue_name = T.unsafe(nil)); end

  def [](name); end
  def args; end
  def created_at; end
  def delete; end
  def display_args; end
  def display_class; end
  def enqueued_at; end
  def item; end
  def jid; end
  def klass; end
  def latency; end
  def parse(item); end
  def queue; end
  def value; end

  private

  def safe_load(content, default); end
end

class Sidekiq::JobRetry
  include(::Sidekiq::ExceptionHandler)
  include(::Sidekiq::Util)

  def initialize(options = T.unsafe(nil)); end

  def global(msg, queue); end
  def local(worker, msg, queue); end

  private

  def attempt_retry(worker, msg, queue, exception); end
  def delay_for(worker, count, exception); end
  def exception_caused_by_shutdown?(e, checked_causes = T.unsafe(nil)); end
  def exception_message(exception); end
  def retries_exhausted(worker, msg, exception); end
  def retry_attempts_from(msg_retry, default); end
  def retry_in(worker, count, exception); end
  def seconds_to_delay(count); end
  def send_to_morgue(msg); end
end

Sidekiq::JobRetry::DEFAULT_MAX_RETRY_ATTEMPTS = T.let(T.unsafe(nil), Integer)

class Sidekiq::JobRetry::Handled < ::RuntimeError
end

class Sidekiq::JobRetry::Skip < ::Sidekiq::JobRetry::Handled
end

class Sidekiq::JobSet < ::Sidekiq::SortedSet
  Elem = type_member(fixed: Sidekiq::SortedEntry)

  def delete(score, jid); end
  def delete_by_jid(score, jid); end
  def delete_by_value(name, value); end
  def each; end
  def fetch(score, jid = T.unsafe(nil)); end
  def find_job(jid); end
  def schedule(timestamp, message); end
end

class Sidekiq::Launcher
  sig { returns(T::Boolean) }
  def stopping?; end
end

Sidekiq::LICENSE = T.let(T.unsafe(nil), String)

module Sidekiq::Logging
  def logger; end

  class << self
    def initialize_logger(log_target = T.unsafe(nil)); end
    def job_hash_context(job_hash); end
    def logger; end
    def logger=(log); end
    def reopen_logs; end
    def tid; end
    def with_context(msg); end
    def with_job_hash_context(job_hash, &block); end
  end
end

class Sidekiq::Logging::Pretty < ::Logger::Formatter
  def call(severity, time, program_name, message); end
  def context; end
end

Sidekiq::Logging::Pretty::SPACE = T.let(T.unsafe(nil), String)

class Sidekiq::Logging::WithoutTimestamp < ::Sidekiq::Logging::Pretty
  def call(severity, time, program_name, message); end
end

module Sidekiq::Middleware
end

class Sidekiq::Middleware::Chain
  include(::Enumerable)
  Elem = type_member(fixed: T.untyped)

  def initialize; end

  def add(klass, *args); end
  def clear; end
  def each(&block); end
  def entries; end
  def exists?(klass); end
  def insert_after(oldklass, newklass, *args); end
  def insert_before(oldklass, newklass, *args); end
  def invoke(*args); end
  def prepend(klass, *args); end
  def remove(klass); end
  def retrieve; end

  private

  def initialize_copy(copy); end
end

class Sidekiq::Middleware::Entry
  def initialize(klass, *args); end

  def klass; end
  def make_new; end
end

Sidekiq::NAME = T.let(T.unsafe(nil), String)

class Sidekiq::Process
  def initialize(hash); end

  def [](key); end
  def dump_threads; end
  def identity; end
  def labels; end
  def quiet!; end
  def stop!; end
  def stopping?; end
  def tag; end

  private

  def signal(sig); end
end

class Sidekiq::ProcessSet
  include(::Enumerable)
  include(::Sidekiq::RedisScanner)
  Elem = type_member(fixed: Sidekiq::Process)

  def initialize(clean_plz = T.unsafe(nil)); end

  def cleanup; end
  def each; end
  def leader; end
  def size; end
end

class Sidekiq::Queue
  include(::Enumerable)
  extend(::Sidekiq::RedisScanner)
  Elem = type_member(fixed: Sidekiq::Job)

  def initialize(name = T.unsafe(nil)); end

  def clear; end
  def each; end
  def find_job(jid); end
  def latency; end
  def name; end

  sig { returns(T::Boolean) }
  def paused?; end

  sig { returns(Integer) }
  def size; end

  class << self
    def all; end
  end
end

module Sidekiq::Queues
  class << self
    def [](queue); end
    def clear_all; end
    def clear_for(queue, klass); end
    def delete_for(jid, queue, klass); end
    def jobs_by_queue; end
    def jobs_by_worker; end
    def push(queue, klass, job); end
  end
end

class Sidekiq::Rails < ::Rails::Engine
end

class Sidekiq::Rails::Reloader
  def initialize(app = T.unsafe(nil)); end

  def call; end
  def inspect; end
end

class Sidekiq::RedisConnection
  class << self
    def create(options = T.unsafe(nil)); end

    private

    def build_client(options); end
    def client_opts(options); end
    def determine_redis_provider; end
    def log_info(options); end
    def verify_sizing(size, concurrency); end
  end
end

module Sidekiq::RedisScanner
  def sscan(conn, key); end
end

class Sidekiq::RetrySet < ::Sidekiq::JobSet
  Elem = type_member(fixed: Sidekiq::SortedEntry)

  def initialize; end

  def kill_all; end
  def retry_all; end
end

module Sidekiq::Scheduled
end

class Sidekiq::Scheduled::Enq
  def enqueue_jobs(now = T.unsafe(nil), sorted_sets = T.unsafe(nil)); end
end

class Sidekiq::Scheduled::Poller
  include(::Sidekiq::ExceptionHandler)
  include(::Sidekiq::Util)

  def initialize; end

  def enqueue; end
  def start; end
  def terminate; end

  private

  def initial_wait; end
  def poll_interval_average; end
  def process_count; end
  def random_poll_interval; end
  def scaled_poll_interval; end
  def wait; end
end

Sidekiq::Scheduled::Poller::INITIAL_WAIT = T.let(T.unsafe(nil), Integer)

Sidekiq::Scheduled::SETS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Sidekiq::ScheduledSet < ::Sidekiq::JobSet
  Elem = type_member(fixed: Sidekiq::SortedEntry)

  def initialize; end
end

class Sidekiq::Shutdown < ::Interrupt
end

class Sidekiq::SortedEntry < ::Sidekiq::Job
  def initialize(parent, score, item); end

  def add_to_queue; end
  def at; end
  def delete; end
  def error?; end
  def kill; end
  def parent; end
  def reschedule(at); end
  def retry; end
  def score; end

  private

  def remove_job; end
end

class Sidekiq::SortedSet
  include(::Enumerable)
  Elem = type_member(fixed: Sidekiq::SortedEntry)

  def initialize(name); end

  def clear; end
  def name; end
  def size; end
end

class Sidekiq::Stats
  include(::Sidekiq::RedisScanner)

  def initialize; end

  def dead_size; end
  def default_queue_latency; end
  def enqueued; end
  def failed; end
  def fetch_stats!; end
  def processed; end
  def processes_size; end
  def queues; end
  def reset(*stats); end
  def retry_size; end
  def scheduled_size; end
  def workers_size; end

  private

  def stat(s); end
end

class Sidekiq::Stats::History
  def initialize(days_previous, start_date = T.unsafe(nil)); end

  def failed; end
  def processed; end

  private

  def date_stat_hash(stat); end
end

class Sidekiq::Stats::Queues
  include(::Sidekiq::RedisScanner)

  def lengths; end
end

module Sidekiq::Util
  include(::Sidekiq::ExceptionHandler)

  def fire_event(event, options = T.unsafe(nil)); end
  def hostname; end
  def identity; end
  def logger; end
  def process_nonce; end
  def redis(&block); end
  def safe_thread(name, &block); end
  def watchdog(last_words); end
end

Sidekiq::Util::EXPIRY = T.let(T.unsafe(nil), Integer)

Sidekiq::VERSION = T.let(T.unsafe(nil), String)

class Sidekiq::Web; end
class Sidekiq::WebApplication; end

module Sidekiq::Worker
  mixes_in_class_methods(::Sidekiq::Worker::ClassMethods)

  sig { returns(String) }
  def jid; end

  def jid=(_); end
  def logger; end

  class << self
    def clear_all; end
    def drain_all; end
    def included(base); end
    def jobs; end
  end
end

module Sidekiq::Worker::ClassMethods
  def clear; end
  def client_push(item); end
  def default_retries_exhausted_exception; end
  def default_retries_exhausted_message; end
  def delay(*args); end
  def delay_for(*args); end
  def delay_until(*args); end
  def drain; end
  def execute_job(worker, args); end
  def get_sidekiq_options; end
  def jobs; end

  sig { params(args: T.untyped).returns(String) }
  def perform_async(*args); end

  sig { params(interval: T.untyped, args: T.untyped).returns(String) }
  def perform_at(interval, *args); end

  sig { params(interval: T.untyped, args: T.untyped).returns(String) }
  def perform_in(interval, *args); end

  def perform_one; end
  def process_job(job); end
  def queue; end
  def set(options); end
  def sidekiq_class_attribute(*attrs); end

  sig do
    params(
      queue: T.nilable(T.any(String, Symbol)),
      retry: T.nilable(T.any(Integer, T::Boolean)),
      backtrace: T.nilable(T.any(Integer, T::Boolean)),
      pool: T.nilable(Symbol),
      unique_for: T.nilable(ActiveSupport::Duration),
      unique_until: T.nilable(Symbol),
      options: T.untyped
    ).void
  end
  def sidekiq_options(queue: nil, retry: nil, backtrace: nil, pool: nil, unique_for: nil, unique_until: nil, **options); end

  sig do
    params(
      block: T.proc.params(msg: T::Hash[String, T.untyped], exception: Exception).void
    ).returns(Integer)
  end
  def sidekiq_retries_exhausted(&block); end

  sig do
    params(
      block: T.proc.params(count: Integer, exception: Exception).returns(T.nilable(Integer))
    ).void
  end
  def sidekiq_retry_in(&block); end

  def within_sidekiq_retries_exhausted_block(user_msg = T.unsafe(nil), exception = T.unsafe(nil), &block); end
end

Sidekiq::Worker::ClassMethods::ACCESSOR_MUTEX = T.let(T.unsafe(nil), Thread::Mutex)

class Sidekiq::Worker::Setter
  def initialize(klass, opts); end

  def perform_async(*args); end
  def perform_at(interval, *args); end
  def perform_in(interval, *args); end
  def set(options); end
end

class Sidekiq::Workers
  include(::Enumerable)
  include(::Sidekiq::RedisScanner)
  Elem = type_member(fixed: T.untyped)

  def each; end
  def size; end
end
