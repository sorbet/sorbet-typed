# typed: strong

module Sidekiq::Worker
  mixes_in_class_methods(Sidekiq::Worker::ClassMethods)
end

module Sidekiq::Worker::ClassMethods
  def perform_async(*args); end

  sig do
    params(
      queue: T.nilable(Symbol),
      retry: T.nilable(T.any(Integer, T::Boolean)),
      backtrace: T.nilable(T.any(Integer, T::Boolean)),
      pool: T.nilable(Symbol),
      unique_for: T.nilable(ActiveSupport::Duration)
    ).void
  end
  def sidekiq_options(
    queue: nil,
    retry: nil,
    backtrace: nil,
    pool: nil,
    unique_for: nil
  )
  end
end
