# typed: strong

module PgSearch::Model
  mixes_in_class_methods(PgSearch::Model::ClassMethods)
end

module PgSearch::Model::ClassMethods
  sig do
    params(
      against: T.any(Symbol, T::Array[Symbol]),
      if: T.any(Symbol, T.proc.returns(T::Boolean)),
      update_if: T.any(Symbol, T.proc.returns(T::Boolean)),
      additional_attributes: T.proc.params(arg0: T.untyped).returns(T::Hash[T.untyped, T.untyped])
    ).void
  end
  def multisearchable(
    against: T.unsafe(nil),
    if: T.unsafe(nil),
    update_if: T.unsafe(nil),
    additional_attributes: T.unsafe(nil)
  ); end

  sig do
    params(
      name: Symbol,
      options: T.untyped,
      against: T.any(Symbol, T::Array[Symbol], T::Hash[T.untyped, T.untyped]),
      associated_against: T::Hash[T.untyped, T.untyped],
      using: T.any(Symbol, T::Array[Symbol], T::Hash[T.untyped, T.untyped]),
      ignoring: T.any(Symbol),
      ranked_by: String,
      order_within_rank: String
    ).void
  end
  def pg_search_scope(
    name,
    options,
    against: T.unsafe(nil),
    associated_against: T.unsafe(nil),
    using: T.unsafe(nil),
    ignoring: T.unsafe(nil),
    ranked_by: T.unsafe(nil),
    order_within_rank: T.unsafe(nil)
  ); end
end
