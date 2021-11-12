# typed: strong

module AASM
  mixes_in_class_methods(AASM::ClassMethods)
end

module AASM::ClassMethods
  def aasm(*args, &block); end

  sig do
    params(
      name: Symbol,
      before_enter: T.nilable(Symbol),
      after_enter: T.nilable(Symbol),
      initial: T.nilable(T::Boolean)
    ).void
  end
  def state(
    *name,
    before_enter: nil,
    after_enter: nil,
    initial: nil
  )
  end

  sig do
    params(
      name: Symbol,
      after_commit: T.nilable(Symbol),
      guard: T.nilable(Symbol),
      after: T.nilable(Symbol),
      after_transition: T.nilable(Symbol),
      before: T.nilable(Symbol),
      before_transaction: T.nilable(Symbol),
      ensure: T.nilable(Symbol),
      error: T.nilable(Symbol),
      before_success: T.nilable(Symbol),
      success: T.nilable(Symbol),
      block: T.proc.bind(T.untyped).void
    ).void
  end
  def event(
    name,
    guard: nil,
    unless: nil,
    after: nil,
    after_commit: nil,
    after_transition: nil,
    before: nil,
    before_transaction: nil,
    ensure: nil,
    error: nil,
    before_success: nil,
    success: nil,
    &block
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
      name: Symbol,
      block: T.proc.bind(T.untyped).void
    ).void
  end
  def before(
    *name,
    &block
  )
  end

  sig do
    params(
      name: Symbol,
      block: T.proc.bind(T.untyped).void
    ).void
  end
  def after(
    *name,
    &block
  )
  end

  sig do
    params(
      callbacks: Symbol,
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def after_all_transitions(*callbacks, &block); end

  sig do
    params(
      callbacks: Symbol,
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def after_all_transactions(*callbacks, &block); end

  sig do
    params(
      callbacks: Symbol,
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def before_all_transactions(*callbacks, &block); end

  sig do
    params(
      callbacks: Symbol,
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def before_all_events(*callbacks, &block); end
end
