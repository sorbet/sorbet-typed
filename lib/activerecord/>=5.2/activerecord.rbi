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
