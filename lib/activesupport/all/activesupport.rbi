# typed: strong

module ActiveSupport
  sig { params(kind: Symbol, blk: T.proc.bind(T.class_of(ActionController::Base)).void).void }
  def self.on_load(kind, &blk); end
end

class Object
  sig { params(duck: T.any(String, Symbol)).returns(T::Boolean) }
  def acts_like?(duck); end

  sig {returns(T::Boolean)}
  def blank?; end

  sig { returns(T.self_type) }
  def deep_dup; end

  sig { returns(TrueClass) }
  def duplicable?; end

  sig { params(another_object: Object).returns(T::Boolean) }
  def in?(another_object); end

  sig { returns(T::Hash[String, T.untyped]) }
  def instance_values; end

  sig { returns(T::Array[String]) }
  def instance_variable_names; end

  sig { returns(T.nilable(T.self_type)) }
  def presence; end

  sig { returns(T::Boolean) }
  def present?; end

  sig { returns(String) }
  def to_param; end

  sig { params(key: String).returns(String) }
  def to_query(key); end

  sig do
    params(
      method_name: T.any(Symbol, String, NilClass),
      args: T.untyped,
      b: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.untyped)
  end
  def try(method_name = nil, *args, &b); end

  sig do
    params(
      method_name: T.any(Symbol, String, NilClass),
      args: T.untyped,
      b: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.untyped)
  end
  def try!(method_name = nil, *args, &b); end

  sig do
    params(
      options: T::Hash[T.untyped, T.untyped],
      block: T.nilable(T.proc.returns(T.untyped))
    ).returns(T.untyped)
  end
  def with_options(options, &block); end
end

class FalseClass
  sig { returns(NilClass) }
  def presence; end
end

class Method
  sig { returns(FalseClass) }
  def duplicable?; end
end

class NilClass
  sig { returns(T::Boolean) }
  def duplicable?; end

  sig do
    params(
      method_name: T.any(Symbol, String, NilClass),
      args: T.untyped,
      b: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(NilClass)
  end
  def try(method_name = nil, *args, &b); end

  sig do
    params(
      method_name: T.any(Symbol, String, NilClass),
      args: T.untyped,
      b: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(NilClass)
  end
  def try!(method_name = nil, *args, &b); end
end

class String
  sig { returns(T::Boolean) }
  def acts_like_string?; end

  sig { params(position: T.any(Integer, String, Regexp, T::Range[Integer])).returns(T.nilable(String)) }
  def at(position); end

  sig { returns(T::Boolean) }
  def blank?; end

  sig { params(first_letter: Symbol).returns(String) }
  def camelize(first_letter = :upper); end

  # camelcase is an alias of camelize
  sig { params(first_letter: Symbol).returns(String) }
  def camelcase(first_letter = :upper); end

  sig { returns(String) }
  def classify; end

  sig { returns(String) }
  def constantize; end

  sig { returns(String) }
  def dasherize; end

  sig { returns(String) }
  def deconstantize; end

  sig { returns(String) }
  def demodulize; end

  # ends_with? is an alias of the core method 'end_with?'
  sig { params(arg0: String).returns(T::Boolean) }
  def ends_with?(*arg0); end

  sig { params(string: String).returns(T::Boolean) }
  def exclude?(string); end

  sig { params(limit: Integer).returns(String) }
  def first(limit = 1); end

  sig { params(separate_class_name_and_id_with_underscore: T::Boolean).returns(String) }
  def foreign_key(separate_class_name_and_id_with_underscore = true); end

  sig { params(position: Integer).returns(String) }
  def from(position); end

  sig { returns(T.untyped) }
  def html_safe; end

  sig { params(capitalize: T::Boolean, keep_id_suffix: T::Boolean).returns(String) }
  def humanize(capitalize: true, keep_id_suffix: false); end

  sig { params(zone: String).returns(T.any(Time, ActiveSupport::TimeWithZone)) }
  def in_time_zone(zone = ::Time.zone); end

  sig { params(amount: Integer, indent_string: T.nilable(String), indent_empty_lines: T::Boolean).returns(T.nilable(String)) }
  def indent!(amount, indent_string = nil, indent_empty_lines = false); end

  sig { params(amount: Integer, indent_string: T.nilable(String), indent_empty_lines: T::Boolean).returns(T.nilable(String)) }
  def indent(amount, indent_string = nil, indent_empty_lines = false); end

  sig { returns(ActiveSupport::StringInquirer) }
  def inquiry; end

  sig { returns(T::Boolean) }
  def is_utf8?; end

  sig { params(limit: Integer).returns(String) }
  def last(limit = 1); end

  sig { returns(ActiveSupport::Multibyte::Chars) }
  def mb_chars; end

  sig { params(separator: String, preserve_case: T::Boolean).returns(String) }
  def parameterize(separator: "-", preserve_case: false); end

  sig { params(count: T.nilable(Integer), locale: Symbol).returns(String) }
  def pluralize(count = nil, locale = :en); end

  sig { params(patterns: T.untyped).returns(T.untyped) }
  def remove!(*patterns); end

  sig { params(patterns: T.untyped).returns(T.untyped) }
  def remove(*patterns); end

  sig { returns(T.untyped) }
  def safe_constantize; end

  sig { params(locale: Symbol).returns(T.nilable(String)) }
  def singularize(locale = :en); end

  sig { returns(T.untyped) }
  def squish!; end

  sig { returns(String) }
  def squish; end

  # starts_with? is an alias of the core method 'start_with?''
  sig { params(arg0: String).returns(T::Boolean) }
  def starts_with?(*arg0); end

  sig { returns(String) }
  def strip_heredoc; end

  sig { returns(String) }
  def tableize; end

  sig { params(keep_id_suffix: T::Boolean).returns(String) }
  def titleize(keep_id_suffix: false); end

  # titlecase is an alias of titleize
  sig { params(keep_id_suffix: T::Boolean).returns(String) }
  def titlecase(keep_id_suffix: false); end

  sig { params(position: Integer).returns(String) }
  def to(position); end

  sig { returns(Date) }
  def to_date; end

  sig { returns(DateTime) }
  def to_datetime; end

  sig { params(form: Symbol).returns(Time) }
  def to_time(form = :local); end

  sig { params(truncate_at: Integer, separator: T.nilable(T.any(String, Regexp)), omission: String).returns(String) }
  def truncate(truncate_at, separator: nil, omission: "..."); end

  sig { params(words_count: Integer, separator: T.nilable(T.any(String, Regexp)), omission: String).returns(String) }
  def truncate_words(words_count, separator: nil, omission: "..."); end

  sig { returns(String) }
  def underscore; end

  sig { returns(String) }
  def upcase_first; end
end

class Array
  sig { returns(T::Boolean) }
  def blank?; end

  sig { returns(T::Array[T.untyped]) }
  def deep_dup; end

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def extract_options!; end

  sig { returns(Elem) }
  def fifth; end

  sig { returns(Elem) }
  def forty_two; end

  sig { returns(Elem) }
  def fourth; end

  sig { params(position: Integer).returns(T::Array[T.untyped]) }
  def from(position); end

  sig { params(number: Integer, fill_with: T.untyped).returns(T.untyped) }
  def in_groups(number, fill_with = nil); end

  sig { params(number: Integer, fill_with: T.untyped).returns(T.untyped) }
  def in_groups_of(number, fill_with = nil); end

  sig { returns(T.untyped) }
  def inquiry; end

  sig { returns(Elem) }
  def second; end

  sig { returns(Elem) }
  def second_to_last; end

  sig do
    params(
      value: T.untyped,
      blk: T.proc.params(arg0: Elem).void
    ).returns(T::Array[Elem])
  end
  def split(value = nil, &blk); end

  sig { returns(Elem) }
  def third; end

  sig { returns(Elem) }
  def third_to_last; end

  sig { params(position: Integer).returns(T::Array[T.untyped]) }
  def to(position); end

  # to_default_s is an alias of the core method 'to_s'
  sig {returns(String)}
  def to_defaul_s; end

  sig { params(format: Symbol).returns(String) }
  def to_formatted_s(format = :default); end

  sig { returns(String) }
  def to_param; end

  sig { params(key: String).returns(String) }
  def to_query(key); end

  sig do
    params(
      words_connector: String,
      two_words_connector: String,
      last_word_connector: String,
      locale: T.nilable(Symbol)
    ).returns(String)
  end
  def to_sentence(words_connector: ", ", two_words_connector: " and ", last_word_connector: ", and ", locale: nil); end

  sig { params(options: T.untyped).returns(T.untyped) }
  def to_xml(options = nil); end

  sig { params(elements: T.untyped).returns(T.untyped) }
  def without(*elements); end
end

module ActiveSupport::NumberHelper
  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      precision: T.nilable(Integer),
      unit: String,
      separator: String,
      delimiter: String,
      format: String,
      negative_format: String
    ).returns(String)
  end
  def number_to_currency(number, locale: :en, precision: 2, unit: "$", separator: ".", delimiter: ",", format: "%u%n", negative_format: "-%u%n"); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      delimiter: String,
      separator: String,
      delimiter_pattern: T.nilable(Regexp)
    ).returns(String)
  end
  def number_to_delimited(number, locale: :en, delimiter: ",", separator: ".", delimiter_pattern: nil); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      precision: T.nilable(Integer),
      significant: T::Boolean,
      separator: String,
      delimiter: String,
      strip_insignificant_zeros: T::Boolean,
      units: T.any(T::Hash[T.untyped, T.untyped], String, Symbol),
      format: String
    ).returns(String)
  end
  def number_to_human(number, locale: :en, precision: 3, significant: true, separator: ".", delimiter: "", strip_insignificant_zeros: true, units: {}, format: "%n %u"); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      precision: T.nilable(Integer),
      significant: T::Boolean,
      separator: String,
      delimiter: String,
      strip_insignificant_zeros: T::Boolean
    ).returns(String)
  end
  def number_to_human_size(number, locale: :en, precision: 3, significant: true, separator: ".", delimiter: "", strip_insignificant_zeros: true); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      precision: T.nilable(Integer),
      significant: T::Boolean,
      separator: String,
      delimiter: String,
      strip_insignificant_zeros: T::Boolean,
      format: String
    ).returns(String)
  end
  def number_to_percentage(number, locale: :en, precision: 3, significant: false, separator: ".", delimiter: "", strip_insignificant_zeros: false, format: "%n%"); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      area_code: T::Boolean,
      delimiter: String,
      extension: T.nilable(Integer),
      country_code: T.nilable(Integer),
      pattern: T.nilable(Regexp)
    ).returns(String)
  end
  def number_to_phone(number, area_code: false, delimiter: "-", extension: nil, country_code: nil, pattern: nil); end

  sig do
    params(
      number: T.any(Integer, Float, String),
      locale: Symbol,
      precision: T.nilable(Integer),
      significant: T::Boolean,
      separator: String,
      delimiter: String,
      strip_insignificant_zeros: T::Boolean
    ).returns(String)
  end
  def number_to_rounded(number, locale: :en, precision: 3, significant: false, separator: ".", delimiter: "", strip_insignificant_zeros: false); end
end

module ActiveSupport::Inflector
  sig do
    params(
      term: String,
      uppercase_first_letter: T::Boolean
    ).returns(String)
  end
  def camelize(term, uppercase_first_letter = true); end

  sig { params(table_name: String).returns(String) }
  def classify(table_name); end

  sig { params(camel_cased_word: String).returns(T.untyped) }
  def constantize(camel_cased_word); end

  sig { params(underscored_word: String).returns(String) }
  def dasherize(underscored_word); end

  sig { params(path: String).returns(String) }
  def deconstantize(path); end

  sig { params(path: String).returns(String) }
  def demodulize(path); end

  sig do
    params(
      class_name: String,
      separate_class_name_and_id_with_underscore: T::Boolean
    ).returns(String)
  end
  def foreign_key(class_name, separate_class_name_and_id_with_underscore = true); end

  sig do
    params(
      lower_case_and_underscored_word: String,
      capitalize: T::Boolean,
      keep_id_suffix: T::Boolean
    ).returns(String)
  end
  def humanize(lower_case_and_underscored_word, capitalize: true, keep_id_suffix: false); end

  sig { params(locale: Symbol, blk: T.untyped).returns(T.untyped) }
  def inflections(locale = :en, &blk); end

  sig { params(number: Integer).returns(String) }
  def ordinal(number); end

  sig { params(number: Integer).returns(String) }
  def ordinalize(number); end

  sig do
    params(
      string: String,
      separator: String,
      preserve_case: T::Boolean,
      locale: Symbol
    ).returns(String)
  end
  def parameterize(string, separator: '-', preserve_case: false, locale: nil); end

  sig { params(word: String, locale: Symbol).returns(String) }
  def pluralize(word, locale = :en); end

  sig { params(camel_cased_word: String).returns(T.untyped) }
  def safe_constantize(camel_cased_word); end

  sig { params(word: String, locale: Symbol).returns(String) }
  def singularize(word, locale = :en); end

  sig { params(class_name: String).returns(String) }
  def tableize(class_name); end

  sig { params(word: String, keep_id_suffix: T::Boolean).returns(String) }
  def titleize(word, keep_id_suffix: false); end

  sig { params(string: String, replacement: String, locale: Symbol).returns(String) }
  def transliterate(string, replacement = '?', locale: nil); end

  sig { params(camel_cased_word: String).returns(String) }
  def underscore(camel_cased_word); end

  sig { params(string: String).returns(String) }
  def upcase_first(string); end
end


# defines some of the methods at https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/time/calculations.rb
# these get added to Time, but are available on TimeWithZone thanks to https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/time_with_zone.rb#L520
# this is not a complete definition!
class ActiveSupport::TimeWithZone
  sig { returns(ActiveSupport::TimeWithZone) }
  def midnight; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def beginning_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_midnight; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_beginning_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def middle_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def midday; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def noon; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_midday; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_noon; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_middle_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def end_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_end_of_day; end
end

# defines some of the methods at https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/date
# this is not a complete definition!
class Date
  sig { params(options: T::Hash[Symbol, Integer]).returns(Date) }
  def advance(options); end
end

# defines some of the methods at https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/time
# this is not a complete definition!
class Time
  sig { returns(Time) }
  def midnight; end

  sig { returns(Time) }
  def beginning_of_day; end

  sig { params(options: T::Hash[Symbol, Integer]).returns(Time) }
  def advance(options); end

  sig { returns(Time) }
  def at_midnight; end

  sig { returns(Time) }
  def at_beginning_of_day; end

  sig { returns(Time) }
  def middle_of_day; end

  sig { returns(Time) }
  def midday; end

  sig { returns(Time) }
  def noon; end

  sig { returns(Time) }
  def at_midday; end

  sig { returns(Time) }
  def at_noon; end

  sig { returns(Time) }
  def at_middle_of_day; end

  # https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/date_and_time/zones.rb
  sig { params(zone: String).returns(T.any(Time, ActiveSupport::TimeWithZone)) }
  def in_time_zone(zone = ::Time.zone); end
end

# defines some of the methods at https://github.com/rails/rails/tree/v6.0.0/activesupport/lib/active_support/core_ext/hash
# this is not a complete definition!
class Hash
  sig { returns(T::Hash[String, T.untyped]) }
  def stringify_keys; end

  sig { returns(T::Hash[String, T.untyped]) }
  def stringify_keys!; end

  sig { returns(T::Hash[String, T.untyped]) }
  def deep_stringify_keys; end

  sig { returns(T::Hash[String, T.untyped]) }
  def deep_stringify_keys!; end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def symbolize_keys; end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def symbolize_keys!; end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def deep_symbolize_keys; end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def deep_symbolize_keys!; end

  # in an ideal world, `arg` would be the type of all keys, the 1st `T.untyped` would be
  # the type of keys your block returns, and the 2nd `T.untyped` would be the type of values
  # that the hash had.
  sig { params(block: T.proc.params(arg: T.untyped).void).returns(T::Hash[T.untyped, T.untyped]) }
  def deep_transform_keys(&block); end

  sig { params(block: T.proc.params(arg: T.untyped).void).returns(T::Hash[T.untyped, T.untyped]) }
  def deep_transform_keys!(&block); end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_options; end
end

class Integer
  # Returns a Duration instance matching the number of months provided.
  #
  # ```ruby
  # 2.months # => 2 months
  # ```
  sig { returns(ActiveSupport::Duration) }
  def months; end

  sig { returns(ActiveSupport::Duration) }
  def month; end

  # Returns a Duration instance matching the number of years provided.
  #
  # ```ruby
  # 2.years # => 2 years
  # ```
  sig { returns(ActiveSupport::Duration) }
  def years; end

  sig { returns(ActiveSupport::Duration) }
  def year; end
end

class Numeric
  sig { returns(ActiveSupport::Duration) }
  def second; end

  sig { returns(ActiveSupport::Duration) }
  def seconds; end

  sig { returns(ActiveSupport::Duration) }
  def minute; end

  sig { returns(ActiveSupport::Duration) }
  def minutes; end

  sig { returns(ActiveSupport::Duration) }
  def hour; end

  sig { returns(ActiveSupport::Duration) }
  def hours; end

  sig { returns(ActiveSupport::Duration) }
  def day; end

  sig { returns(ActiveSupport::Duration) }
  def days; end

  sig { returns(ActiveSupport::Duration) }
  def week; end

  sig { returns(ActiveSupport::Duration) }
  def weeks; end

  sig { returns(ActiveSupport::Duration) }
  def fortnight; end

  sig { returns(ActiveSupport::Duration) }
  def fortnights; end

  sig { returns(T.self_type) }
  def in_milliseconds; end
end

module Enumerable
  # https://github.com/rails/rails/blob/v5.2.3/activesupport/lib/active_support/core_ext/enumerable.rb#L64..L72
  # the case where a block isn't given isn't handled - that seems like an unlikely case
  sig do
    type_parameters(:key).params(
      block: T.proc.params(o: Enumerable::Elem).returns(T.type_parameter(:key))
    ).returns(
      T::Hash[T.type_parameter(:key), Enumerable::Elem]
    )
  end
  def index_by(&block); end
end

class ActiveSupport::Duration
  # Returns the number of seconds that this Duration represents.
  #
  # ```ruby
  # 1.minute.to_i   # => 60
  # 1.hour.to_i     # => 3600
  # 1.day.to_i      # => 86400
  # ```
  #
  # Note that this conversion makes some assumptions about the
  # duration of some periods, e.g. months are always 1/12 of year
  # and years are 365.2425 days:
  #
  # ```ruby
  # # equivalent to (1.year / 12).to_i
  # 1.month.to_i    # => 2629746
  #
  # # equivalent to 365.2425.days.to_i
  # 1.year.to_i     # => 31556952
  # ```
  #
  # In such cases, Ruby's core
  # [Date](https://ruby-doc.org/stdlib/libdoc/date/rdoc/Date.html) and
  # [Time](https://ruby-doc.org/stdlib/libdoc/time/rdoc/Time.html) should be used for precision
  # date and time arithmetic.
  sig { returns(Integer) }
  def to_i; end

  sig { returns(Float) }
  def to_f; end

  # Returns the amount of seconds a duration covers as a string.
  # For more information check to_i method.
  #
  # ```ruby
  # 1.day.to_s # => "86400"
  # ```
  sig { returns(String) }
  def to_s; end

  # Creates a new Duration from string formatted according to ISO 8601 Duration.
  #
  # See [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601#Durations) for more information.
  # This method allows negative parts to be present in pattern.
  # If invalid string is provided, it will raise `ActiveSupport::Duration::ISO8601Parser::ParsingError`.
  sig { params(iso8601duration: String).returns(ActiveSupport::Duration) }
  def self.parse(iso8601duration); end

  # Creates a new Duration from a seconds value that is converted
  # to the individual parts:
  #
  # ```ruby
  # ActiveSupport::Duration.build(31556952).parts # => {:years=>1}
  # ActiveSupport::Duration.build(2716146).parts  # => {:months=>1, :days=>1}
  # ```
  sig { params(value: Numeric).returns(ActiveSupport::Duration) }
  def self.build(value); end

  # Returns `true` if `other` is also a Duration instance, which has the
  # same parts as this one.
  sig { params(other: T.untyped).returns(T::Boolean) }
  def eql?(other); end

  # Compares one Duration with another or a Numeric to this Duration.
  # Numeric values are treated as seconds.
  sig { params(other: T.any(ActiveSupport::Duration, Numeric)).returns(Integer) }
  def <=>(other); end

  # Adds another Duration or a Numeric to this Duration. Numeric values
  # are treated as seconds.
  sig { params(other: T.any(ActiveSupport::Duration, Numeric)).returns(ActiveSupport::Duration) }
  def +(other); end

  # Subtracts another Duration or a Numeric from this Duration. Numeric
  # values are treated as seconds.
  sig { params(other: T.any(ActiveSupport::Duration, Numeric)).returns(ActiveSupport::Duration) }
  def -(other); end

  # Multiplies this Duration by a Numeric and returns a new Duration.
  sig { params(other: Numeric).returns(ActiveSupport::Duration) }
  def *(other); end

  # Divides this Duration by a Numeric and returns a new Duration.
  sig { params(other: Numeric).returns(ActiveSupport::Duration) }
  def /(other); end

  # Returns the modulo of this Duration by another Duration or Numeric.
  # Numeric values are treated as seconds.
  sig { params(other: T.any(ActiveSupport::Duration, Numeric)).returns(ActiveSupport::Duration) }
  def %(other); end

  # Returns `true` if `other` is also a Duration instance with the
  # same `value`, or if `other == value`.
  sig { params(other: T.untyped).returns(T::Boolean) }
  def ==(other); end

  # Build ISO 8601 Duration string for this duration.
  # The `precision` parameter can be used to limit seconds' precision of duration.
  sig { params(precision: T.nilable(Integer)).returns(String) }
  def iso8601(precision: nil); end
end

# Implements a hash where keys `:foo` and `"foo"` are considered
# to be the same.
#
# ```ruby
# rgb = ActiveSupport::HashWithIndifferentAccess.new
#
# rgb[:black] = '#000000'
# rgb[:black]  # => '#000000'
# rgb['black'] # => '#000000'
#
# rgb['white'] = '#FFFFFF'
# rgb[:white]  # => '#FFFFFF'
# rgb['white'] # => '#FFFFFF'
# ```
#
# Internally symbols are mapped to strings when used as keys in the entire
# writing interface (calling `[]=`, `merge`, etc). This
# mapping belongs to the public interface. For example, given:
#
# ```ruby
# hash = ActiveSupport::HashWithIndifferentAccess.new(a: 1)
# ```
#
# You are guaranteed that the key is returned as a string:
#
# ```ruby
# hash.keys # => ["a"]
# ```
#
# Technically other types of keys are accepted:
#
# ```ruby
# hash = ActiveSupport::HashWithIndifferentAccess.new(a: 1)
# hash[0] = 0
# hash # => {"a"=>1, 0=>0}
# ```
#
# but this class is intended for use cases where strings or symbols are the
# expected keys and it is convenient to understand both as the same. For
# example the `params` hash in Ruby on Rails.
#
# Note that core extensions define `Hash#with_indifferent_access`:
#
# ```ruby
# rgb = { black: '#000000', white: '#FFFFFF' }.with_indifferent_access
# ```
#
# which may be handy.
#
# To access this class outside of Rails, require the core extension with:
#
# ```ruby
# require "active_support/core_ext/hash/indifferent_access"
# ```
#
# which will, in turn, require this file.
class ActiveSupport::HashWithIndifferentAccess < Hash
  include Enumerable

  extend T::Generic
  K = type_member
  V = type_member
  Elem = type_member

  sig { params(key: T.any(String, Symbol)).returns(T.untyped) }
  def [](key); end

  # Assigns a new value to the hash:
  #
  # ```ruby
  # hash = ActiveSupport::HashWithIndifferentAccess.new
  # hash[:key] = 'value'
  # ```
  #
  # This value can be later fetched using either `:key` or `'key'`.
  sig { params(key: T.any(String, Symbol), value: T.untyped).returns(T.untyped) }
  def []=(key, value); end

  # Same as `Hash#assoc` where the key passed as argument can be
  # either a string or a symbol:
  #
  # ```ruby
  # counters = ActiveSupport::HashWithIndifferentAccess.new
  # counters[:foo] = 1
  #
  # counters.assoc('foo') # => ["foo", 1]
  # counters.assoc(:foo)  # => ["foo", 1]
  # counters.assoc(:zoo)  # => nil
  # ```
  sig { params(key: T.any(String, Symbol)).returns(T.untyped) }
  def assoc(key); end

  sig { returns(T.untyped) }
  def compact; end

  sig { returns(T.untyped) }
  def deep_stringify_keys!; end

  sig { returns(T.untyped) }
  def deep_stringify_keys; end

  sig { returns(T.untyped) }
  def deep_symbolize_keys; end

  # Same as `Hash#default` where the key passed as argument can be
  # either a string or a symbol:
  #
  # ```ruby
  # hash = ActiveSupport::HashWithIndifferentAccess.new(1)
  # hash.default                   # => 1
  #
  # hash = ActiveSupport::HashWithIndifferentAccess.new { |hash, key| key }
  # hash.default                   # => nil
  # hash.default('foo')            # => 'foo'
  # hash.default(:foo)             # => 'foo'
  # ```
  sig { params(args: T.untyped).returns(T.untyped) }
  def default(*args); end

  # Removes the specified key from the hash.
  sig { params(key: T.untyped).returns(T.untyped) }
  def delete(key); end

  # Same as `Hash#dig` where the key passed as argument can be
  # either a string or a symbol:
  #
  # ```ruby
  # counters = ActiveSupport::HashWithIndifferentAccess.new
  # counters[:foo] = { bar: 1 }
  #
  # counters.dig('foo', 'bar')     # => 1
  # counters.dig(:foo, :bar)       # => 1
  # counters.dig(:zoo)             # => nil
  # ```
  sig { params(args: T.untyped).returns(T.untyped) }
  def dig(*args); end

  # Returns a shallow copy of the hash.
  #
  # ```ruby
  # hash = ActiveSupport::HashWithIndifferentAccess.new({ a: { b: 'b' } })
  # dup  = hash.dup
  # dup[:a][:c] = 'c'
  #
  # hash[:a][:c] # => "c"
  # dup[:a][:c]  # => "c"
  # ```
  sig { returns(T.untyped) }
  def dup; end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def except(*keys); end

  # Returns `true` so that `Array#extract_options!` finds members of
  # this class.
  sig { returns(TrueClass) }
  def extractable_options?; end

  # Same as `Hash#fetch` where the key passed as argument can be
  # either a string or a symbol:
  #
  # ```ruby
  # counters = ActiveSupport::HashWithIndifferentAccess.new
  # counters[:foo] = 1
  #
  # counters.fetch('foo')          # => 1
  # counters.fetch(:bar, 0)        # => 0
  # counters.fetch(:bar) { |key| 0 } # => 0
  # counters.fetch(:zoo)           # => KeyError: key not found: "zoo"
  # ```
  sig { params(key: T.any(String, Symbol), extras: T.untyped).returns(T.untyped) }
  def fetch(key, *extras); end

  # Returns an array of the values at the specified indices, but also
  # raises an exception when one of the keys can't be found.
  #
  # ```ruby
  # hash = ActiveSupport::HashWithIndifferentAccess.new
  # hash[:a] = 'x'
  # hash[:b] = 'y'
  # hash.fetch_values('a', 'b') # => ["x", "y"]
  # hash.fetch_values('a', 'c') { |key| 'z' } # => ["x", "z"]
  # hash.fetch_values('a', 'c') # => KeyError: key not found: "c"
  # ```
  sig { params(indices: T.any(String, Symbol), block: T.untyped).returns(T.untyped) }
  def fetch_values(*indices, &block); end

  sig { params(constructor: T.untyped, block: T.untyped).void }
  def initialize(constructor = {}, &block); end

  # Checks the hash for a key matching the argument passed in:
  #
  # ```ruby
  # hash = ActiveSupport::HashWithIndifferentAccess.new
  # hash['key'] = 'value'
  # hash.key?(:key)  # => true
  # hash.key?('key') # => true
  # ```
  sig { params(key: T.any(String, Symbol)).returns(T::Boolean) }
  def key?(key); end

  # This method has the same semantics of `update`, except it does not
  # modify the receiver but rather returns a new hash with indifferent
  # access with the result of the merge.
  sig { params(hash: T.untyped, block: T.untyped).returns(T.untyped) }
  def merge(hash, &block); end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def reject(*args, &block); end

  # Replaces the contents of this hash with other_hash.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.replace({ "c" => 300, "d" => 400 }) # => {"c"=>300, "d"=>400}
  # ```
  sig { params(other_hash: T.untyped).returns(T.untyped) }
  def replace(other_hash); end

  # Same semantics as `reverse_merge` but modifies the receiver in-place.
  sig { params(other_hash: T.untyped).returns(T.untyped) }
  def reverse_merge!(other_hash); end

  # Like `merge` but the other way around: Merges the receiver into the
  # argument and returns a new hash with indifferent access as result:
  #
  # ```ruby
  # hash = ActiveSupport::HashWithIndifferentAccess.new
  # hash['a'] = nil
  # hash.reverse_merge(a: 0, b: 1) # => {"a"=>nil, "b"=>1}
  # ```
  sig { params(other_hash: T.untyped).returns(T.untyped) }
  def reverse_merge(other_hash); end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def select(*args, &block); end

  sig { params(args: T.untyped).returns(T.untyped) }
  def self.[](*args); end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def slice!(*keys); end

  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def slice(*keys); end

  sig { returns(T.untyped) }
  def stringify_keys!; end

  sig { returns(T.untyped) }
  def stringify_keys; end

  sig { returns(T.untyped) }
  def symbolize_keys; end

  # Convert to a regular hash with string keys.
  sig { returns(T::Hash[String, T.untyped]) }
  def to_hash; end

  sig { returns(T.untyped) }
  def to_options!; end

  sig { returns(T.untyped) }
  def transform_keys!; end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def transform_keys(*args, &block); end

  sig { params(args: T.untyped, block: T.untyped).returns(T.untyped) }
  def transform_values(*args, &block); end

  # Updates the receiver in-place, merging in the hash passed as argument:
  #
  # ```ruby
  # hash_1 = ActiveSupport::HashWithIndifferentAccess.new
  # hash_1[:key] = 'value'
  #
  # hash_2 = ActiveSupport::HashWithIndifferentAccess.new
  # hash_2[:key] = 'New Value!'
  #
  # hash_1.update(hash_2) # => {"key"=>"New Value!"}
  # ```
  #
  # The argument can be either an
  # `ActiveSupport::HashWithIndifferentAccess` or a regular `Hash`.
  # In either case the merge respects the semantics of indifferent access.
  #
  # If the argument is a regular hash with keys `:key` and `"key"` only one
  # of the values end up in the receiver, but which one is unspecified.
  #
  # When given a block, the value for duplicated keys will be determined
  # by the result of invoking the block with the duplicated key, the value
  # in the receiver, and the value in `other_hash`. The rules for duplicated
  # keys follow the semantics of indifferent access:
  #
  # ```ruby
  # hash_1[:key] = 10
  # hash_2['key'] = 12
  # hash_1.update(hash_2) { |key, old, new| old + new } # => {"key"=>22}
  # ```
  sig do
    params(
      other_hash: T.any(ActiveSupport::HashWithIndifferentAccess[T.untyped, T.untyped], T::Hash[T.untyped, T.untyped]),
      block: T.untyped
    ).returns(T.untyped)
  end
  def update(other_hash, &block); end

  # Returns an array of the values at the specified indices:
  #
  # ```ruby
  # hash = ActiveSupport::HashWithIndifferentAccess.new
  # hash[:a] = 'x'
  # hash[:b] = 'y'
  # hash.values_at('a', 'b') # => ["x", "y"]
  # ```
  sig { params(keys: T.any(String, Symbol)).returns(T.untyped) }
  def values_at(*keys); end

  sig { returns(T.untyped) }
  def with_indifferent_access; end

  ### Aliases

  def has_key?(key); end
  def include?(key); end
  def member?(key); end
  def merge!(other_hash); end
  def store(key, value); end
  def to_options; end
  def with_defaults!(other_hash); end
  def with_defaults(other_hash); end
  def without(*keys); end
end
