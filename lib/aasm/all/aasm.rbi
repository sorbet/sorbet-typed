# typed: strong

module AASM
  mixes_in_class_methods(AASM::ClassMethods)
end

module AASM::ClassMethods
  sig do
    params(
      name: Symbol,
      before_enter: T.nilable(Symbol),
      initial: T.nilable(T::Boolean)
    ).void
  end
  def state(
    name,
    before_enter: nil,
    initial: nil
  )
  end

  sig do
    params(
      name: Symbol,
      after_commit: T.nilable(Symbol),
      guard: T.nilable(Symbol)
    ).void
  end
  def event(
    name,
    after_commit: nil,
    guard: nil
  )
  end

  sig do
    params(
      from: T.any(T.nilable(Symbol), T::Array[Symbol]),
      to: T.nilable(Symbol),
      guard: T.nilable(Symbol),
      after: T.nilable(Symbol)
    ).void
  end
  def transitions(
    from: nil,
    to: nil,
    guard: nil,
    after: nil
  )
  end

  sig do
    params(
      name: Symbol
    ).void
  end
  def before(
    name
  )
  end

  sig do
    params(
      name: Symbol
    ).void
  end
  def after(
    name
  )
  end
end
