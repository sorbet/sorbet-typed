# typed: strong

module ActiveModel::AttributeMethods
  mixes_in_class_methods(::ActiveModel::AttributeMethods::ClassMethods)
end

module ActiveModel::AttributeMethods::ClassMethods; end

ActiveModel::AttributeMethods::AttrNames::DEF_SAFE_NAME = T.let(T.unsafe(nil), Regexp)

ActiveModel::AttributeMethods::CALL_COMPILABLE_REGEXP = T.let(T.unsafe(nil), Regexp)

ActiveModel::AttributeMethods::NAME_COMPILABLE_REGEXP = T.let(T.unsafe(nil), Regexp)

module ActiveModel::Conversion
  mixes_in_class_methods(::ActiveModel::Conversion::ClassMethods)
end

module ActiveModel::Conversion::ClassMethods; end

module ActiveModel::Dirty
  include(::ActiveModel::AttributeMethods)

  sig { params(attr: Symbol, from: T.untyped, to: T.untyped).returns(T::Boolean) }
  def attribute_changed?(attr, from: nil, to: nil); end

  sig { params(attr_name: Symbol).returns(T::Boolean) }
  def attribute_changed_in_place?(attr_name); end

  sig { params(attr_name: Symbol, options: T.untyped).returns(T::Boolean) }
  def attribute_previously_changed?(attr_name, **options); end

  sig { returns(T::Boolean) }
  def changed?; end

  sig { returns(T::Hash[T.any(Symbol, String), T.untyped]) }
  def previous_changes; end
end

class ActiveModel::ForbiddenAttributesError < ::StandardError
end

module ActiveModel::Model
  include(::ActiveModel::AttributeAssignment)
  extend(::ActiveSupport::Concern)

  include(::ActiveSupport::Callbacks)
  include(::ActiveModel::Validations::HelperMethods)
  include(::ActiveModel::Validations)
  include(::ActiveModel::Conversion)
end

module ActiveModel::Validations
  extend(::ActiveSupport::Concern)

  include(::ActiveSupport::Callbacks)
  include(::ActiveModel::Validations::HelperMethods)

  mixes_in_class_methods(::ActiveModel::Validations::ClassMethods)

  # Returns the `Errors` object that holds all information about attribute
  # error messages.
  #
  # ```ruby
  # class Person
  #   include ActiveModel::Validations
  #
  #   attr_accessor :name
  #   validates_presence_of :name
  # end
  #
  # person = Person.new
  # person.valid? # => false
  # person.errors # => #<ActiveModel::Errors:0x007fe603816640 @messages={name:["can't be blank"]}>
  # ```
  sig { returns(ActiveModel::Errors) }
  def errors; end

  sig { params(context: T.untyped).returns(T::Boolean) }
  def invalid?(context = T.unsafe(nil)); end

  sig { params(context: T.untyped).returns(T::Boolean) }
  def valid?(context = T.unsafe(nil)); end
end

module ActiveModel::Validations::ClassMethods
  # https://github.com/rails/rails/blob/v5.2.3/activemodel/lib/active_model/validations.rb#L136-L154
  sig do
    params(
      names: T.any(Symbol, String),
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
      prepend: T::Boolean,
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
    ).void
  end
  def validate(
    *names,
    if: nil,
    on: nil,
    prepend: false,
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
      length: T.any(T::Range[T.untyped], T::Hash[T.untyped, T.untyped]),
      numericality: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
      on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
      presence: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
      size: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
      strict: T::Boolean,
      uniqueness: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      kwargs: T.untyped
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
    unless: :_,
    **kwargs
  )
  end
end

ActiveModel::Validations::ClassMethods::VALID_OPTIONS_FOR_VALIDATE = T.let(T.unsafe(nil), T::Array[T.untyped])

module ActiveModel::SecurePassword
  mixes_in_class_methods(::ActiveModel::SecurePassword::ClassMethods)
end

module ActiveModel::SecurePassword::ClassMethods; end

ActiveModel::SecurePassword::MAX_PASSWORD_LENGTH_ALLOWED = T.let(T.unsafe(nil), Integer)

class ActiveModel::Type::Value
  extend T::Sig

  sig { params(precision: T.untyped, limit: T.untyped, scale: T.untyped).void }
  def initialize(precision: nil, limit: nil, scale: nil); end

  sig { params(value: T.untyped).returns(T.untyped) }
  def cast(value); end
end

class ActiveModel::Type::Boolean < ActiveModel::Type::Value
  sig { params(arg0: T.untyped).returns(T.nilable(T::Boolean)) }
  def cast(arg0); end
end

class ActiveModel::Type::ImmutableString < ActiveModel::Type::Value
  sig { params(arg0: T.untyped).returns(T.nilable(String)) }
  def cast(arg0); end
end
class ActiveModel::Type::String < ActiveModel::Type::ImmutableString; end

class ActiveModel::Type::Integer < ActiveModel::Type::Value
  sig { params(arg0: T.untyped).returns(T.nilable(Integer)) }
  def cast(arg0); end
end
class ActiveModel::Type::BigInteger < ActiveModel::Type::Integer; end

class ActiveModel::Type::Binary < ActiveModel::Type::Value
  sig { params(arg0: T.untyped).returns(T.nilable(String)) }
  def cast(arg0); end
end

class ActiveModel::Type::Decimal < ActiveModel::Type::Value
  sig { params(arg0: T.untyped).returns(T.nilable(BigDecimal)) }
  def cast(arg0); end
end

class ActiveModel::Type::Float < ActiveModel::Type::Value
  sig { params(arg0: T.untyped).returns(T.nilable(Float)) }
  def cast(arg0); end
end

class ActiveModel::Type::Date < ::ActiveModel::Type::Value
  sig { params(arg0: T.untyped).returns(T.nilable(Date)) }
  def cast(arg0); end
end

class ActiveModel::Type::DateTime < ::ActiveModel::Type::Value
  sig { params(arg0: T.untyped).returns(T.nilable(DateTime)) }
  def cast(arg0); end
end

module ActiveModel::Validations::Callbacks
  mixes_in_class_methods(::ActiveModel::Validations::Callbacks::ClassMethods)
end

module ActiveModel::Validations::Callbacks::ClassMethods; end

module ActiveModel::Validations::HelperMethods
  # A type alias for the in/within parameters on the
  # validates_(inclusion/exclusion)_of methods.
  InWithinType = T.type_alias do
    T.nilable(
      T.any(
        Symbol,
        String,
        T::Array[T.any(String, Symbol)],
        T::Range[Integer],
        T::Array[T::Boolean],
        T.proc.params(arg0: T.untyped).returns(T::Boolean)
      )
    )
  end

  module ClassMethods
    sig do
      params(
        attr_names: T.any(String, Symbol),
        message: String,
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        allow_nil: T::Boolean,
        allow_blank: T::Boolean,
        strict: T::Boolean
      ).void
    end
    def validates_absence_of(
      *attr_names,
      message: 'must be blank',
      if: nil,
      unless: :_,
      on: :_,
      allow_nil: false,
      allow_blank: false,
      strict: false
    ); end

    sig do
      params(
        attr_names: T.any(String, Symbol),
        message: String,
        accept: T.untyped,
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        allow_nil: T::Boolean,
        allow_blank: T::Boolean,
        strict: T::Boolean
      ).void
    end
    def validates_acceptance_of(
      *attr_names,
      message: 'must be accepted',
      accept: ['1', true],
      if: nil,
      unless: :_,
      on: :_,
      allow_nil: false,
      allow_blank: false,
      strict: false
    ); end

    sig do
      params(
        attr_names: T.any(String, Symbol),
        message: String,
        case_sensitive: T::Boolean,
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        allow_nil: T::Boolean,
        allow_blank: T::Boolean,
        strict: T::Boolean
      ).void
    end
    def validates_confirmation_of(
      *attr_names,
      message: "doesn't match %{translated_attribute_name}",
      case_sensitive: true,
      if: nil,
      unless: :_,
      on: :_,
      allow_nil: false,
      allow_blank: false,
      strict: false
    ); end

    sig do
      params(
        attr_names: T.any(String, Symbol),
        message: String,
        in: InWithinType,
        within: InWithinType,
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        allow_nil: T::Boolean,
        allow_blank: T::Boolean,
        strict: T::Boolean
      ).void
    end
    def validates_exclusion_of(
      *attr_names,
      message: 'is reserved',
      in: nil,
      within: nil,
      if: nil,
      unless: :_,
      on: :_,
      allow_nil: false,
      allow_blank: false,
      strict: false
    ); end

    sig do
      params(
        attr_names: T.any(String, Symbol),
        message: String,
        with: T.untyped,
        without: T.untyped,
        multiline: T.untyped,
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        allow_nil: T::Boolean,
        allow_blank: T::Boolean,
        strict: T::Boolean
      ).void
    end
    def validates_format_of(
      *attr_names,
      message: 'is invalid',
      with: nil,
      without: nil,
      multiline: nil,
      if: nil,
      unless: :_,
      on: :_,
      allow_nil: false,
      allow_blank: false,
      strict: false
    ); end

    sig do
      params(
        attr_names: T.any(String, Symbol),
        message: String,
        in: InWithinType,
        within: InWithinType,
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        allow_nil: T::Boolean,
        allow_blank: T::Boolean,
        strict: T::Boolean
      ).void
    end
    def validates_inclusion_of(
      *attr_names,
      message: 'is not included in the list',
      in: nil,
      within: nil,
      if: nil,
      unless: :_,
      on: :_,
      allow_nil: false,
      allow_blank: false,
      strict: false
    ); end

    sig do
      params(
        attr_names: T.any(String, Symbol),
        message: T.nilable(String),
        minimum: T.nilable(Integer),
        maximum: T.nilable(Integer),
        is: T.nilable(Integer),
        within: T.nilable(T::Range[Integer]),
        in: T.nilable(T::Range[Integer]),
        too_long: String,
        too_short: String,
        wrong_length: String,
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        allow_nil: T::Boolean,
        allow_blank: T::Boolean,
        strict: T::Boolean
      ).void
    end
    def validates_length_of(
      *attr_names,
      message: nil,
      minimum: nil,
      maximum: nil,
      is: nil,
      within: nil,
      in: nil,
      too_long: 'is too long (maximum is %{count} characters)',
      too_short: 'is too short (minimum is %{count} characters)',
      wrong_length: 'is the wrong length (should be %{count} characters)',
      if: nil,
      unless: :_,
      on: :_,
      allow_nil: false,
      allow_blank: false,
      strict: false
    ); end

    # validates_size_of is an alias of validates_length_of
    sig do
      params(
        attr_names: T.any(String, Symbol),
        message: T.nilable(String),
        minimum: T.nilable(Integer),
        maximum: T.nilable(Integer),
        is: T.nilable(Integer),
        within: T.nilable(T::Range[Integer]),
        in: T.nilable(T::Range[Integer]),
        too_long: String,
        too_short: String,
        wrong_length: String,
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        allow_nil: T::Boolean,
        allow_blank: T::Boolean,
        strict: T::Boolean
      ).void
    end
    def validates_size_of(
      *attr_names,
      message: nil,
      minimum: nil,
      maximum: nil,
      is: nil,
      within: nil,
      in: nil,
      too_long: 'is too long (maximum is %{count} characters)',
      too_short: 'is too short (minimum is %{count} characters)',
      wrong_length: 'is the wrong length (should be %{count} characters)',
      if: nil,
      unless: :_,
      on: :_,
      allow_nil: false,
      allow_blank: false,
      strict: false
    ); end

    # Create a type alias so we don't have to repeat this long type signature 6 times.
    NumberComparatorType = T.type_alias {T.nilable(T.any(Integer, Float, T.proc.params(arg0: T.untyped).returns(T::Boolean), Symbol))}
    sig do
      params(
        attr_names: T.any(String, Symbol),
        message: String,
        only_integer: T::Boolean,
        greater_than: NumberComparatorType,
        greater_than_or_equal_to: NumberComparatorType,
        equal_to: NumberComparatorType,
        less_than: NumberComparatorType,
        less_than_or_equal_to: NumberComparatorType,
        other_than: NumberComparatorType,
        odd: T::Boolean,
        even: T::Boolean,
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        allow_nil: T::Boolean,
        allow_blank: T::Boolean,
        strict: T::Boolean
      ).void
    end
    def validates_numericality_of(
      *attr_names,
      message: 'is not a number',
      only_integer: false,
      greater_than: nil,
      greater_than_or_equal_to: nil,
      equal_to: nil,
      less_than: nil,
      less_than_or_equal_to: nil,
      other_than: nil,
      odd: false,
      even: false,
      if: nil,
      unless: :_,
      on: :_,
      allow_nil: false,
      allow_blank: false,
      strict: false
    ); end

    sig do
      params(
        attr_names: T.any(String, Symbol),
        message: String,
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        allow_nil: T::Boolean,
        allow_blank: T::Boolean,
        strict: T::Boolean
      ).void
    end
    def validates_presence_of(
      *attr_names,
      message: "can't be blank",
      if: nil,
      unless: :_,
      on: :_,
      allow_nil: false,
      allow_blank: false,
      strict: false
    ); end
  end

  mixes_in_class_methods(ClassMethods)
end

ActiveModel::Validations::NumericalityValidator::CHECKS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

ActiveModel::Validations::NumericalityValidator::HEXADECIMAL_REGEX = T.let(T.unsafe(nil), Regexp)

ActiveModel::Validations::NumericalityValidator::INTEGER_REGEX = T.let(T.unsafe(nil), Regexp)

ActiveModel::Validations::NumericalityValidator::RESERVED_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class ActiveModel::Errors
  include Enumerable
  Elem = type_member {{fixed: T.untyped}}

  sig { params(key: T.any(String, Symbol)).returns(T::Array[String]) }
  def [](key); end

  def each(&blk); end

  # Adds `message` to the error messages and used validator type to `details` on `attribute`.
  # More than one error can be added to the same `attribute`.
  # If no `message` is supplied, `:invalid` is assumed.
  #
  # ```ruby
  # person.errors.add(:name)
  # # => ["is invalid"]
  # person.errors.add(:name, :not_implemented, message: "must be implemented")
  # # => ["is invalid", "must be implemented"]
  # ```
  #
  # ```ruby
  # person.errors.messages
  # # => {:name=>["is invalid", "must be implemented"]}
  # ```
  #
  # ```ruby
  # person.errors.details
  # # => {:name=>[{error: :not_implemented}, {error: :invalid}]}
  # ```
  #
  # If `message` is a symbol, it will be translated using the appropriate
  # scope (see `generate_message`).
  #
  # If `message` is a proc, it will be called, allowing for things like
  # `Time.now` to be used within an error.
  #
  # If the `:strict` option is set to `true`, it will raise
  # ActiveModel::StrictValidationFailed instead of adding the error.
  # `:strict` option can also be set to any other exception.
  #
  # ```ruby
  # person.errors.add(:name, :invalid, strict: true)
  # # => ActiveModel::StrictValidationFailed: Name is invalid
  # person.errors.add(:name, :invalid, strict: NameIsInvalid)
  # # => NameIsInvalid: Name is invalid
  #
  # person.errors.messages # => {}
  # ```
  #
  # `attribute` should be set to `:base` if the error is not
  # directly associated with a single attribute.
  #
  # ```ruby
  # person.errors.add(:base, :name_or_email_blank,
  #   message: "either name or email must be present")
  # person.errors.messages
  # # => {:base=>["either name or email must be present"]}
  # person.errors.details
  # # => {:base=>[{error: :name_or_email_blank}]}
  # ```
  sig do
    params(
      attribute: T.any(Symbol, String),
      message: T.any(String, Symbol),
      options: T::Hash[T.untyped, T.untyped]
    ).returns(T.untyped)
  end
  def add(attribute, message = :invalid, options = {}); end

  # Returns `true` if an error on the attribute with the given message is
  # present, or `false` otherwise. `message` is treated the same as for `add`.
  #
  # ```ruby
  # person.errors.add :name, :blank
  # person.errors.added? :name, :blank           # => true
  # person.errors.added? :name, "can't be blank" # => true
  # ```
  #
  # If the error message requires options, then it returns `true` with
  # the correct options, or `false` with incorrect or missing options.
  #
  # ```ruby
  # person.errors.add :name, :too_long, { count: 25 }
  # person.errors.added? :name, :too_long, count: 25                     # => true
  # person.errors.added? :name, "is too long (maximum is 25 characters)" # => true
  # person.errors.added? :name, :too_long, count: 24                     # => false
  # person.errors.added? :name, :too_long                                # => false
  # person.errors.added? :name, "is too long"                            # => false
  # ```
  sig do
    params(
      attribute: Symbol,
      message: T.any(String, Symbol),
      options: T::Hash[T.untyped, T.untyped]
    ).returns(T::Boolean)
  end
  def added?(attribute, message = :invalid, options = {}); end

  # Returns `true` if an error on the attribute with the given message is
  # present, or `false` otherwise. `message` is treated the same as for `add`.
  #
  # ```ruby
  # person.errors.add :age
  # person.errors.add :name, :too_long, { count: 25 }
  # person.errors.of_kind? :age                                            # => true
  # person.errors.of_kind? :name                                           # => false
  # person.errors.of_kind? :name, :too_long                                # => true
  # person.errors.of_kind? :name, "is too long (maximum is 25 characters)" # => true
  # person.errors.of_kind? :name, :not_too_long                            # => false
  # person.errors.of_kind? :name, "is too long"                            # => false
  # ```
  sig do
    params(
      attribute: Symbol,
      message: T.any(String, Symbol)
    ).returns(T::Boolean)
  end
  def of_kind?(attribute, message = :invalid); end

  # Returns all the full error messages in an array.
  #
  # ```ruby
  # class Person
  #   validates_presence_of :name, :address, :email
  #   validates_length_of :name, in: 5..30
  # end
  #
  # person = Person.create(address: '123 First St.')
  # person.errors.full_messages
  # # => ["Name is too short (minimum is 5 characters)", "Name can't be blank", "Email can't be blank"]
  # ```
  sig { returns(T::Array[String]) }
  def full_messages; end

  sig { returns(T::Hash[Symbol, T::Array[String]]) }
  def messages; end

  sig { params(args: T.untyped, block: T.untyped).returns(T::Boolean) }
  def empty?(*args, &block); end

  sig { params(full_messages: T::Boolean).returns(T::Hash[Symbol, T::Array[String]]) }
  def to_hash(full_messages = false); end
end

ActiveModel::Errors::CALLBACKS_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

ActiveModel::Errors::MESSAGE_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])
