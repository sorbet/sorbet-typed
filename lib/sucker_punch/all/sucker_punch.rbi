# sucker_punch-2.1.2
module SuckerPunch
  def self.default_exception_handler(ex, klass, args); end
  def self.default_logger; end
  def self.exception_handler; end
  def self.exception_handler=(handler); end
  def self.logger; end
  def self.logger=(log); end
  def self.shutdown_timeout; end
  def self.shutdown_timeout=(timeout); end
end
module SuckerPunch::Counter
end
module SuckerPunch::Counter::Utilities
  def decrement; end
  def increment; end
  def value; end
end
class SuckerPunch::Counter::Busy
  def counter; end
  def initialize(queue_name); end
  def self.clear; end
  include SuckerPunch::Counter::Utilities
end
class SuckerPunch::Counter::Processed
  def counter; end
  def initialize(queue_name); end
  def self.clear; end
  include SuckerPunch::Counter::Utilities
end
class SuckerPunch::Counter::Failed
  def counter; end
  def initialize(queue_name); end
  def self.clear; end
  include SuckerPunch::Counter::Utilities
end
module SuckerPunch::Job
  def logger; end
  def self.included(base); end
  mixes_in_class_methods(SuckerPunch::Job::ClassMethods)
end
module SuckerPunch::Job::ClassMethods
  def __run_perform(*args); end
  def max_jobs(num); end
  def perform_async(*args); end
  def perform_in(interval, *args); end
  def workers(num); end
end
class SuckerPunch::Queue < Concurrent::Synchronization::LockableObject
  def ==(other); end
  def busy_workers; end
  def enqueued_jobs(*args, &block); end
  def failed_jobs; end
  def idle?; end
  def idle_workers; end
  def initialize(name, pool); end
  def kill; end
  def length(*args, &block); end
  def max_length(*args, &block); end
  def max_queue(*args, &block); end
  def min_length(*args, &block); end
  def name; end
  def pool; end
  def post(*args, &block); end
  def processed_jobs; end
  def queue_length(*args, &block); end
  def running?; end
  def self.all; end
  def self.clear; end
  def self.find_or_create(name, num_workers = nil, num_jobs_max = nil); end
  def self.shutdown_all; end
  def self.stats; end
  def shutdown; end
  def total_workers(*args, &block); end
  def wait_for_termination(*args, &block); end
  extend Forwardable
  include Concurrent::ExecutorService
end
class SuckerPunch::Railtie < Rails::Railtie
end
