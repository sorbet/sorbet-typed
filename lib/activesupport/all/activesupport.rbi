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

class Hash
  sig { returns(T.self_type) }
  def deep_stringify_keys; end

  sig { returns(T.self_type) }
  def deep_stringify_keys!; end

  sig { returns(T.self_type) }
  def deep_symbolize_keys; end

  sig { returns(T.self_type) }
  def deep_symbolize_keys!; end

  sig { returns(T.self_type) }
  def deep_transform_keys; end

  sig { returns(T.self_type) }
  def deep_transform_keys!; end

  sig { returns(T.self_type) }
  def stringify_keys; end

  sig { returns(T.self_type) }
  def stringify_keys!; end

  sig { returns(T.self_type) }
  def symbolize_keys; end

  sig { returns(T.self_type) }
  def symbolize_keys!; end
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
end

# defines some of the methods at https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/time/calculations.rb
# this is not a complete definition!
class Time
  sig { returns(Time) }
  def midnight; end

  sig { returns(Time) }
  def beginning_of_day; end

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
