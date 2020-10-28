# typed: strong

module Sidekiq::Worker
  mixes_in_class_methods(Sidekiq::Worker::ClassMethods)
end

module Sidekiq::Worker::ClassMethods
  def perform_async(*args); end

  sig do
    params(
      queue: T.nilable(T.any(String, Symbol)),
      retry: T.nilable(T.any(Integer, T::Boolean)),
      backtrace: T.nilable(T.any(Integer, T::Boolean)),
      pool: T.nilable(Symbol),
      unique_for: T.nilable(ActiveSupport::Duration),
      unique_until: T.nilable(Symbol)
    ).void
  end
  def sidekiq_options(
    queue: nil,
    retry: nil,
    backtrace: nil,
    pool: nil,
    unique_for: nil,
    unique_until: nil
  )
  end
  
  sig do
    params(
      blk: T.proc.params(count: Integer, exception: Exception).returns(T.nilable(Integer))
    ).void
  end
  def sidekiq_retry_in(&blk); end

  sig do
    params(
      blk: T.proc.params(msg: T::Hash[String, T.untyped], exception: Exception).void
    ).returns(Integer)
  end
  def sidekiq_retries_exhausted(&blk); end
end

module Sidekiq
  class CLI
    sig { returns(Sidekiq::CLI) }
    def self.instance; end

    sig { returns(Sidekiq::Launcher) }
    def launcher; end
  end

  class Launcher
    sig { returns(T::Boolean) }
    def stopping?; end
  end
end
