# typed: strong

module ActiveStorage
  sig { returns(Gem::Version) }
  def self.gem_version; end

  sig { returns(Gem::Version) }
  def self.version; end
end

class ActiveStorage::Attached::One
  # Attaches an `attachable` to the record.
  #
  # If the record is persisted and unchanged, the attachment is saved to
  # the database immediately. Otherwise, it'll be saved to the DB when the
  # record is next saved.
  #
  # ```ruby
  # person.avatar.attach(params[:avatar]) # ActionDispatch::Http::UploadedFile object
  # person.avatar.attach(params[:signed_blob_id]) # Signed reference to blob from direct upload
  # person.avatar.attach(io: File.open("/path/to/face.jpg"), filename: "face.jpg", content_type: "image/jpg")
  # person.avatar.attach(avatar_blob) # ActiveStorage::Blob object
  # ```
  sig { params(attachable: T.untyped).void }
  def attach(attachable); end

  # Returns `true` if an attachment has been made.
  #
  # ```ruby
  # class User < ApplicationRecord
  #   has_one_attached :avatar
  # end
  #
  # User.new.avatar.attached? # => false
  # ```
  sig { returns(T::Boolean) }
  def attached?; end

  # Returns the associated attachment record.
  #
  # You don't have to call this method to access the attachment's methods as
  # they are all available at the model level.
  sig { returns(T.nilable(ActiveStorage::Attachment)) }
  def attachment; end

  # Deletes the attachment without purging it, leaving its blob in place.
  sig { void }
  def detach; end

  # Directly purges the attachment (i.e. destroys the blob and
  # attachment and deletes the file on the service).
  sig { void }
  def purge; end

  # Purges the attachment through the queuing system.
  sig { void }
  def purge_later; end
end

class ActiveStorage::Attached::Many
  # Attaches one or more `attachables` to the record.
  #
  # If the record is persisted and unchanged, the attachments are saved to
  # the database immediately. Otherwise, they'll be saved to the DB when the
  # record is next saved.
  #
  # ```ruby
  # document.images.attach(params[:images]) # Array of ActionDispatch::Http::UploadedFile objects
  # document.images.attach(params[:signed_blob_id]) # Signed reference to blob from direct upload
  # document.images.attach(io: File.open("/path/to/racecar.jpg"), filename: "racecar.jpg", content_type: "image/jpg")
  # document.images.attach([ first_blob, second_blob ])
  # ```
  sig { params(attachables: T.untyped).void }
  def attach(*attachables); end

  # Returns `true` if any attachments have been made.
  #
  # ```ruby
  # class Gallery < ApplicationRecord
  #   has_many_attached :photos
  # end
  #
  # Gallery.new.photos.attached? # => false
  # ```
  sig { returns(T::Boolean) }
  def attached?; end

  # Returns all the associated attachment records.
  #
  # All methods called on this proxy object that aren't listed here will automatically be delegated to `attachments`.
  sig { returns(T.nilable(T::Array[ActiveStorage::Attachment])) }
  def attachments; end

  # Deletes associated attachments without purging them, leaving their respective blobs in place.
  sig { void }
  def detach; end

  # Directly purges each associated attachment (i.e. destroys the blobs and
  # attachments and deletes the files on the service).
  sig { void }
  def purge; end

  # Purges each associated attachment through the queuing system.
  sig { void }
  def purge_later; end
end
