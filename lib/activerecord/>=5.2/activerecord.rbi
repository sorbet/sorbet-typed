# typed: strong

class ActiveRecord::Base
  extend ActiveRecord::Delegation::DelegateCache
  include ActiveRecord::DefineCallbacks
  include ActiveRecord::TouchLater
  include ActiveRecord::SecureToken
  include ActiveRecord::Suppressor
end
