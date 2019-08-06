# typed: strong

class Array
  sig { params(elements: T.untyped).returns(T::Array[T.untyped]) }
  def excluding(*elements); end

  sig do
    params(
      blk: T.nilable(T.proc.params(arg0: Elem).returns(T::Boolean))
    ).returns(T.any(T::Array[Elem], T::Enumerable[Elem]))
  end
  def extract!(&blk); end

  sig { params(elements: T.untyped).returns(T::Array[T.untyped]) }
  def including(*elements); end
end
