# typed: strong

class ActiveRecord::Base
  extend ActiveRecord::Delegation::DelegateCache
  extend ActiveRecord::CollectionCacheKey
  include ActiveRecord::DefineCallbacks
  include ActiveRecord::TouchLater
  include ActiveRecord::SecureToken
  include ActiveRecord::Suppressor
end
