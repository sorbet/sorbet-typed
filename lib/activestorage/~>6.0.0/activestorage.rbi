# typed: strong

###
# This exists because Rails 6.1 changes the method signatures for
# has_one_attached and has_many_attached.
###

module ActiveStorage::Attached::Model::ClassMethods
  # Specifies the relation between a single attachment and the model.
  #
  # ```ruby
  # class User < ApplicationRecord
  #   has_one_attached :avatar
  # end
  # ```
  #
  # There is no column defined on the model side, Active Storage takes
  # care of the mapping between your records and the attachment.
  #
  # To avoid N+1 queries, you can include the attached blobs in your query like so:
  #
  # ```ruby
  # User.with_attached_avatar
  # ```
  #
  # Under the covers, this relationship is implemented as a `has_one` association to a
  # ActiveStorage::Attachment record and a `has_one-through` association to a
  # ActiveStorage::Blob record. These associations are available as `avatar_attachment`
  # and `avatar_blob`. But you shouldn't need to work with these associations directly in
  # most circumstances.
  #
  # The system has been designed to having you go through the ActiveStorage::Attached::One
  # proxy that provides the dynamic proxy to the associations and factory methods, like `attach`.
  #
  # If the `:dependent` option isn't set, the attachment will be purged
  # (i.e. destroyed) whenever the record is destroyed.
  sig do
    params(
      name: Symbol,
      dependent: Symbol
    ).void
  end
  def has_one_attached(name, dependent: :purge_later); end

  # Specifies the relation between multiple attachments and the model.
  #
  # ```ruby
  # class Gallery < ApplicationRecord
  #   has_many_attached :photos
  # end
  # ```
  #
  # There are no columns defined on the model side, Active Storage takes
  # care of the mapping between your records and the attachments.
  #
  # To avoid N+1 queries, you can include the attached blobs in your query like so:
  #
  # ```ruby
  # Gallery.where(user: Current.user).with_attached_photos
  # ```
  #
  # Under the covers, this relationship is implemented as a `has_many` association to a
  # ActiveStorage::Attachment record and a `has_many-through` association to a
  # ActiveStorage::Blob record. These associations are available as `photos_attachments`
  # and `photos_blobs`. But you shouldn't need to work with these associations directly in
  # most circumstances.
  #
  # The system has been designed to having you go through the ActiveStorage::Attached::Many
  # proxy that provides the dynamic proxy to the associations and factory methods, like `#attach`.
  #
  # If the `:dependent` option isn't set, all the attachments will be purged
  # (i.e. destroyed) whenever the record is destroyed.
  sig do
    params(
      name: Symbol,
      dependent: Symbol
    ).void
  end
  def has_many_attached(name, dependent: :purge_later); end
end

module ActiveStorage::Attached::Model
  mixes_in_class_methods(ActiveStorage::Attached::Model::ClassMethods)
end

###
# This part of the file exists because Rails 6.1 changes the parent class of
# Attachment and Blob, so this is preserved for users still on Rails 6.0.
###

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
