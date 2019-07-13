# typed: strong

ActiveRecord::Migration::Compatibility::V5_2 = ActiveRecord::Migration::Current

class ActiveRecord::Base
  extend ActiveRecord::Delegation::DelegateCache
  extend ActiveRecord::CollectionCacheKey
  include ActiveRecord::DefineCallbacks
  include ActiveRecord::TouchLater
  include ActiveRecord::SecureToken
  include ActiveRecord::Suppressor
end