# typed: strong

# This file exists because Rails 6.1 changes the parent class of Attachment and Blob, so this is preserved for users still on Rails 6.0.
class ActiveStorage::Attachment < ActiveRecord::Base
  # These aren't technically included, but Attachment delegates any missing
  # methods to Blob, which means it effectively inherits methods from Blob.
  # This is essentially a hack to make it easier to maintain the
  # ActiveStorage signatures. We can't include Blob directly because
  # it's a class, so `include`ing it doesn't work.
  include ActiveStorage::Blob::Analyzable
  include ActiveStorage::Blob::Identifiable
  include ActiveStorage::Blob::Representable
end

class ActiveStorage::Blob < ActiveRecord::Base
  include ActiveStorage::Blob::Analyzable
  include ActiveStorage::Blob::Identifiable
  include ActiveStorage::Blob::Representable
end
