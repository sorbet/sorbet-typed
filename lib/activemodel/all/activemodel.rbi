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
    # https://github.com/rails/rails/blob/v5.2.3/activemodel/lib/active_model/validations.rb#L131-L152
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
        names: T.any(T::Array[Symbol], Symbol),
        absence: T.nilable(T::Boolean),
        acceptance: T.any(T::Boolean, Hash),
        confirmation: T.any(T::Boolean, Hash),
        exclusion: T.nilable(Hash),
        format: T.nilable(Hash),
        length: T.nilable(Hash),
        numericality: T.any(T::Boolean, Hash),
        presence: T.nilable(T::Boolean),
        inclusion: T.any(
          T::Array[T.any(String, Symbol)],
          { in: T::Array[T.any(Symbol, String, T::Boolean, NilClass)]}
        ),
        size: T.nilable(Hash),
        uniqueness: T.any(
          T::Boolean,
          {
            scope: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
            case_sensitive: T::Boolean
          }
        ),
        unless: T.nilable(Symbol),
        if: T.nilable(Symbol),
        allow_nil: T.nilable(T::Boolean),
        on: T.nilable(Symbol)
      ).void
    end
    def validates(
      *names,
      absence: nil,
      acceptance: nil,
      confirmation: nil,
      exclusion: nil,
      format: nil,
      length: nil,
      numericality: nil,
      presence: nil,
      inclusion: nil,
      size: nil,
      uniqueness: nil,
      on: nil,
      unless: nil,
      if: nil,
      allow_nil: nil
    )
    end
  end
end
