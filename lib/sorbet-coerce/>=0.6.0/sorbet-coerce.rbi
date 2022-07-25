# typed: true
module SafeType
  class CoercionError < StandardError; end
end

module TypeCoerce
  extend T::Sig
  extend T::Generic

  Elem = type_member

  sig { params(args: T.untyped, raise_coercion_error: T.nilable(T::Boolean), coerce_empty_to_nil: T::Boolean).returns(Elem) }
  def from(args, raise_coercion_error: nil, coerce_empty_to_nil: false); end

  class CoercionError < SafeType::CoercionError; end
  class ShapeError < SafeType::CoercionError; end
end
