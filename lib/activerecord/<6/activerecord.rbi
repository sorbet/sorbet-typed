# typed: strong

class ActiveRecord::Base
  # removed in rails 6: https://github.com/rails/rails/pull/35848
  extend ActiveRecord::CollectionCacheKey
end
