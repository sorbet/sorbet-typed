# typed: strict

class Job
  extend T::Sig
  include Sidekiq::Worker

  sidekiq_options(queue: 'default')
end
