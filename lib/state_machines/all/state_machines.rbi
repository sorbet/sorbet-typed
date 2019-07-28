# typed: strong

module StateMachines::MacroMethods
  sig do
    params(
      names: T.untyped,
      initial: T.any(String, Symbol),
      blk: T.proc.bind(StateMachines::StateContext).void,
    ).void
  end
  def state_machine(*names, initial: nil, &blk); end
end

class StateMachines::StateContext
  sig do
    params(
      name: T.any(Symbol, String),
      blk: T.proc.params(arg0: T.untyped).bind(StateMachines::Event).void,
    ).void
  end
  def event(name, &blk); end

  sig do
    params(
      name: T.any(Symbol, String),
      blk: T.proc.bind(StateMachines::StateContext).void,
    ).void
  end
  def state(*name, &blk); end

  sig do
    params(
      methods: Symbol,
      from: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      on: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      to: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      do: T.any(Symbol, T.proc.params(arg0: T.untyped).void),
      blk: T.any(NilClass, T.proc.params(arg0: T.untyped).void),
    ).void
  end
  def before_transition(*methods, from: nil, on: nil, to: nil, do: nil, &blk); end

  sig do
    params(
      methods: Symbol,
      from: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      on: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      to: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      do: T.any(Symbol, T.proc.params(arg0: T.untyped).void),
      blk: T.any(NilClass, T.proc.params(arg0: T.untyped).void),
    ).void
  end
  def after_transition(*methods, from: nil, on: nil, to: nil, do: nil, &blk); end
end

class StateMachines::Event
  sig do
    params(
      states: T::Hash[
        T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
        T.any(String, Symbol),
      ],
    ).void
  end
  def transition(states); end
end
