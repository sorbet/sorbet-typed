module Sidekiq::Worker
  mixes_in_class_methods(Sidekiq::Worker::ClassMethods)
end

module Sidekiq::Worker::ClassMethods
  def perform_async(*args); end
end