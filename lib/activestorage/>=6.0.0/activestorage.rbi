# typed: strong

class ActiveStorage::Attached::One
  sig { returns(T::Boolean) }
  def blank?; end
end

class ActiveStorage::Attached::Many
  # Returns all attached blobs.
  sig { returns(T::Array[T.untyped]) }
  def blobs; end
end
