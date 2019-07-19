# typed: strong

module ActiveModel::Dirty
  extend T::Sig
  sig { params(attr: Symbol, from: T.untyped, to: T.untyped).returns(T::Boolean) }
  def attribute_changed?(attr, from: nil, to: nil); end

  sig { params(attr_name: Symbol).returns(T::Boolean) }
  def attribute_changed_in_place?(attr_name); end

  sig { params(attr_name: Symbol).returns(T::Boolean) }
  def attribute_previously_changed?(attr_name); end

  sig { returns(T::Boolean) }
  def changed?; end
end

module ActiveModel::Validations
  module ClassMethods
    # https://github.com/rails/rails/blob/v5.2.3/activemodel/lib/active_model/validations.rb#L136-L154
    sig do
      params(
        names: T.any(Symbol, String),
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String),
        prepend: T::Boolean,
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      ).void
    end
    def validate(
      *names,
      if: nil,
      on: nil,
      prepend: T::Boolean,
      unless: nil
    ); end

    # https://github.com/rails/rails/blob/v5.2.3/activemodel/lib/active_model/validations/validates.rb#L75-L105
    sig do
      params(
        names: T.any(Symbol, String), # a splat of at least one attribute name
        absence: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        acceptance: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        allow_blank: T::Boolean,
        allow_nil: T::Boolean,
        confirmation: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        # `exclusion` and `inclusion` are tricky to type without better support
        # for overloading and shapes. Value can be anything that responds to
        # `include?` (e.g. (1..3)), or a hash having an `in` or `within` key,
        # like { in: [1, 2, 3], ... }
        exclusion: T::Enumerable[T.untyped],
        # `format` hash must additionally contain either :with or :without keys.
        # Alternatively, it can be a Regexp.
        format: T.any(T::Hash[T.untyped, T.untyped], Regexp),
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        # `exclusion` and `inclusion` are tricky to type without better support
        # for overloading and shapes. Value can be anything that responds to
        # `include?` (e.g. (1..3)), or a hash having an `in` or `within` key,
        # like { in: [1, 2, 3], ... }
        inclusion: T::Enumerable[T.untyped],
        # if Hash, must contain :in, :within, :maximum, :minimum, or :is keys
        length: T.any(T::Range, T::Hash[T.untyped, T.untyped]),
        numericality: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        presence: T::Boolean,
        size: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        strict: T::Boolean,
        uniqueness: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      ).void
    end
    def validates(
      *names,
      absence: false,
      acceptance: {},
      allow_blank: false,
      allow_nil: false,
      confirmation: false,
      exclusion: [],
      format: {},
      if: nil,
      inclusion: [],
      length: {},
      numericality: false,
      on: :_,
      presence: false,
      size: false,
      strict: false,
      uniqueness: false,
      unless: :_
    )
    end
  end
end
