# typed: strong

class ActiveRecord::Base
  extend ActiveRecord::Delegation::DelegateCache
  include ActiveRecord::DefineCallbacks
  include ActiveRecord::TouchLater
  include ActiveRecord::SecureToken
  include ActiveRecord::Suppressor
end

module ActiveRecord::DefineCallbacks
  extend(::ActiveSupport::Concern)

  include(::ActiveSupport::Callbacks)
  include(::ActiveModel::Validations::Callbacks)

  mixes_in_class_methods(::ActiveRecord::DefineCallbacks::ClassMethods)
end

module ActiveRecord::DefineCallbacks::ClassMethods
  include(::ActiveModel::Callbacks)
end

module ActiveRecord::TouchLater
  def touch_later(*names, **arg1); end
end

module ActiveRecord::SecureToken::ClassMethods
  def generate_unique_secure_token; end
  def has_secure_token(attribute = T.unsafe(nil)); end
end

module ActiveRecord::Suppressor
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveRecord::Suppressor::ClassMethods)

  def save(*arg0, **arg1); end
  def save!(*arg0, **arg1); end
end
