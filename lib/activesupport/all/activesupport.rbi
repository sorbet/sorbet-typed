# typed: strong

module ActiveSupport
  sig { params(kind: Symbol, blk: T.proc.bind(T.untyped).void).void }
  def self.on_load(kind, &blk); end
end

class Object
  sig { params(duck: T.any(String, Symbol)).returns(T::Boolean) }
  def acts_like?(duck); end

  sig { params(options: T.untyped).returns(T::Hash[String, T.untyped]) }
  def as_json(options = nil); end

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

  def require_dependency(file_name, message = "No such file to load -- %s.rb"); end

  sig { params(options: T.untyped).returns(String) }
  def to_json(options = nil); end

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

  sig { returns(Module) }
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

  # returns Time in the case zone is passed nil and ActiveSupport::TimeWithZone otherwise
  sig { params(zone: T.nilable(T.any(String, ActiveSupport::TimeZone))).returns(T.any(ActiveSupport::TimeWithZone, Time)) }
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

  sig { params(separator: String, preserve_case: T::Boolean, locale: Symbol).returns(String) }
  def parameterize(separator: "-", preserve_case: false, locale: nil); end

  sig { params(count: T.nilable(Integer), locale: Symbol).returns(String) }
  def pluralize(count = nil, locale = :en); end

  sig { params(patterns: T.untyped).returns(T.untyped) }
  def remove!(*patterns); end

  sig { params(patterns: T.untyped).returns(T.untyped) }
  def remove(*patterns); end

  sig { returns(T.untyped) }
  def safe_constantize; end

  sig { params(locale: Symbol).returns(String) }
  def singularize(locale = :en); end

  sig { returns(String) }
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

  sig { returns(T.nilable(Date)) }
  def to_date; end

  sig { returns(T.nilable(DateTime)) }
  def to_datetime; end

  sig { params(form: Symbol).returns(T.nilable(Time)) }
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

  sig { returns(T.nilable(Elem)) }
  def fifth; end

  sig { returns(T.nilable(Elem)) }
  def forty_two; end

  sig { returns(T.nilable(Elem)) }
  def fourth; end

  sig { params(position: Integer).returns(T::Array[T.untyped]) }
  def from(position); end

  sig { params(number: Integer, fill_with: T.untyped).returns(T.untyped) }
  def in_groups(number, fill_with = nil); end

  sig { params(number: Integer, fill_with: T.untyped).returns(T.untyped) }
  def in_groups_of(number, fill_with = nil); end

  sig { returns(T.untyped) }
  def inquiry; end

  sig { returns(T.nilable(Elem)) }
  def second; end

  sig { returns(T.nilable(Elem)) }
  def second_to_last; end

  sig do
    params(
      value: T.untyped,
      blk: T.proc.params(arg0: Elem).void
    ).returns(T::Array[Elem])
  end
  def split(value = nil, &blk); end

  sig { returns(T.nilable(Elem)) }
  def third; end

  sig { returns(T.nilable(Elem)) }
  def third_to_last; end

  sig { params(position: Integer).returns(T::Array[T.untyped]) }
  def to(position); end

  # to_default_s is an alias of the core method 'to_s'
  sig {returns(String)}
  def to_default_s; end

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

  sig { params(object: T.untyped).returns(T::Array[T.untyped]) }
  def self.wrap(object); end
end

module ActiveSupport::NumberHelper
  extend(::ActiveSupport::NumberHelper)

  sig do
    params(
      number: T.any(Numeric, String),
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
      number: T.any(Numeric, String),
      locale: Symbol,
      delimiter: String,
      separator: String,
      delimiter_pattern: T.nilable(Regexp)
    ).returns(String)
  end
  def number_to_delimited(number, locale: :en, delimiter: ",", separator: ".", delimiter_pattern: nil); end

  sig do
    params(
      number: T.any(Numeric, String),
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
      number: T.any(Numeric, String),
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
      number: T.any(Numeric, String),
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
      number: T.any(Numeric, String),
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
      number: T.any(Numeric, String),
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
  extend(::ActiveSupport::Inflector)

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

class ActiveSupport::InheritableOptions < ::ActiveSupport::OrderedOptions
  K = type_member(fixed: T.untyped)
  V = type_member(fixed: T.untyped)
  Elem = type_member(fixed: T.untyped)

  def initialize(parent = T.unsafe(nil)); end

  def inheritable_copy; end
end

# defines some of the methods at https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/time/calculations.rb
# these get added to Time, but are available on TimeWithZone thanks to https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/time_with_zone.rb#L520
# this is not a complete definition!
class ActiveSupport::TimeWithZone
  include(::DateAndTime::Calculations)

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

  sig { returns(ActiveSupport::TimeWithZone) }
  def end_of_year; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_end_of_year; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def beginning_of_year; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_beginning_of_year; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def end_of_month; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_end_of_month; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def beginning_of_month; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_beginning_of_month; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def end_of_hour; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_end_of_hour; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def beginning_of_hour; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def at_beginning_of_hour; end

  # Returns a `Time` instance that represents the time in `time_zone`.
  sig { returns(Time) }
  def time; end

  # Returns a `Time` instance of the simultaneous time in the UTC timezone.
  sig { returns(Time) }
  def utc; end

  # Returns the underlying TZInfo::TimezonePeriod.
  sig { returns(TZInfo::TimezonePeriod) }
  def period; end

  # Returns the simultaneous time in `Time.zone`, or the specified zone.
  sig { params(new_zone: T.untyped).returns(ActiveSupport::TimeWithZone) }
  def in_time_zone(new_zone = ::Time.zone); end

  # Returns a `Time` instance of the simultaneous time in the system timezone.
  sig { params(utc_offset: T.untyped).returns(Time) }
  def localtime(utc_offset = nil); end

  ### The following methods are generated dynamically and call to the corresponding Time methods.

  sig { returns(Integer) }
  def year; end

  sig { returns(Integer) }
  def mon; end

  sig { returns(Integer) }
  def month; end

  sig { returns(Integer) }
  def day; end

  sig { returns(Integer) }
  def mday; end

  sig { returns(Integer) }
  def wday; end

  sig { returns(Integer) }
  def yday; end

  sig { returns(Integer) }
  def hour; end

  sig { returns(Integer) }
  def min; end

  sig { returns(Integer) }
  def sec; end

  sig { returns(Numeric) }
  def usec; end

  sig { returns(Numeric) }
  def nsec; end

  ### End dynamically-generated methods

  # Returns true if the current time is within Daylight Savings Time for the
  # specified time zone.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)'    # => 'Eastern Time (US & Canada)'
  # Time.zone.parse("2012-5-30").dst?           # => true
  # Time.zone.parse("2012-11-30").dst?          # => false
  # ```
  sig { returns(T::Boolean) }
  def dst?; end

  # Returns true if the current time zone is set to UTC.
  #
  # ```ruby
  # Time.zone = 'UTC'                           # => 'UTC'
  # Time.zone.now.utc?                          # => true
  # Time.zone = 'Eastern Time (US & Canada)'    # => 'Eastern Time (US & Canada)'
  # Time.zone.now.utc?                          # => false
  # ```
  sig { returns(T::Boolean) }
  def utc?; end

  # Returns the offset from current time to UTC time in seconds.
  sig { returns(Integer) }
  def utc_offset; end

  # Returns a formatted string of the offset from UTC, or an alternative
  # string if the time zone is already UTC.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)'   # => "Eastern Time (US & Canada)"
  # Time.zone.now.formatted_offset(true)       # => "-05:00"
  # Time.zone.now.formatted_offset(false)      # => "-0500"
  # Time.zone = 'UTC'                          # => "UTC"
  # Time.zone.now.formatted_offset(true, "0")  # => "0"
  # ```
  sig { params(colon: T::Boolean, alternate_utc_string: T.untyped).returns(String) }
  def formatted_offset(colon = true, alternate_utc_string = nil); end

  # Returns the time zone abbreviation.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)'   # => "Eastern Time (US & Canada)"
  # Time.zone.now.zone # => "EST"
  # ```
  sig { returns(String) }
  def zone; end

  # Returns a string of the object's date, time, zone, and offset from UTC.
  #
  # ```ruby
  # Time.zone.now.inspect # => "Thu, 04 Dec 2014 11:00:25 EST -05:00"
  # ```
  sig { returns(String) }
  def inspect; end

  # Returns a string of the object's date and time in the ISO 8601 standard
  # format.
  #
  # ```ruby
  # Time.zone.now.xmlschema  # => "2014-12-04T11:02:37-05:00"
  # ```
  sig { params(fraction_digits: Integer).returns(String) }
  def xmlschema(fraction_digits = 0); end

  # Returns a string of the object's date and time in the format used by
  # HTTP requests.
  #
  # ```ruby
  # Time.zone.now.httpdate  # => "Tue, 01 Jan 2013 04:39:43 GMT"
  # ```
  sig { returns(String) }
  def httpdate; end

  # Returns a string of the object's date and time in the RFC 2822 standard
  # format.
  #
  # ```ruby
  # Time.zone.now.rfc2822  # => "Tue, 01 Jan 2013 04:51:39 +0000"
  # ```
  sig { returns(String) }
  def rfc2822; end

  # Returns a string of the object's date and time.
  # Accepts an optional `format`:
  # * `:default` - default value, mimics Ruby Time#to_s format.
  # * `:db` - format outputs time in UTC :db time. See Time#to_formatted_s(:db).
  # * Any key in `Time::DATE_FORMATS` can be used. See active_support/core_ext/time/conversions.rb.
  sig { params(format: Symbol).returns(String) }
  def to_s(format = :default); end

  # Replaces `%Z` directive with +zone before passing to Time#strftime,
  # so that zone information is correct.
  sig { params(format: String).returns(String) }
  def strftime(format); end

  # Returns true if the current object's time is within the specified
  # `min` and `max` time.
  sig { params(min: T.untyped, max: T.untyped).returns(T::Boolean) }
  def between?(min, max); end

  # Returns true if the current object's time is in the past.
  sig { returns(T::Boolean) }
  def past?; end

  # Returns true if the current object's time falls within
  # the current day.
  sig { returns(T::Boolean) }
  def today?; end

  # Returns true if the current object's time is in the future.
  sig { returns(T::Boolean) }
  def future?; end

  # Returns `true` if `other` is equal to current object.
  sig { params(other: T.untyped).returns(T::Boolean) }
  def eql?(other); end

  # Adds an interval of time to the current object's time and returns that
  # value as a new TimeWithZone object.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)' # => 'Eastern Time (US & Canada)'
  # now = Time.zone.now # => Sun, 02 Nov 2014 01:26:28 EDT -04:00
  # now + 1000          # => Sun, 02 Nov 2014 01:43:08 EDT -04:00
  # ```
  #
  # If we're adding a Duration of variable length (i.e., years, months, days),
  # move forward from #time, otherwise move forward from #utc, for accuracy
  # when moving across DST boundaries.
  #
  # For instance, a time + 24.hours will advance exactly 24 hours, while a
  # time + 1.day will advance 23-25 hours, depending on the day.
  #
  # ```ruby
  # now + 24.hours      # => Mon, 03 Nov 2014 00:26:28 EST -05:00
  # now + 1.day         # => Mon, 03 Nov 2014 01:26:28 EST -05:00
  # ```
  sig { params(other: T.untyped).returns(ActiveSupport::TimeWithZone) }
  def +(other); end

  # Subtracts an interval of time and returns a new TimeWithZone object unless
  # the other value `acts_like?` time. Then it will return a Float of the difference
  # between the two times that represents the difference between the current
  # object's time and the `other` time.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)' # => 'Eastern Time (US & Canada)'
  # now = Time.zone.now # => Mon, 03 Nov 2014 00:26:28 EST -05:00
  # now - 1000          # => Mon, 03 Nov 2014 00:09:48 EST -05:00
  # ```
  #
  # If subtracting a Duration of variable length (i.e., years, months, days),
  # move backward from #time, otherwise move backward from #utc, for accuracy
  # when moving across DST boundaries.
  #
  # For instance, a time - 24.hours will go subtract exactly 24 hours, while a
  # time - 1.day will subtract 23-25 hours, depending on the day.
  #
  # ```ruby
  # now - 24.hours      # => Sun, 02 Nov 2014 01:26:28 EDT -04:00
  # now - 1.day         # => Sun, 02 Nov 2014 00:26:28 EDT -04:00
  # ```
  #
  # If both the TimeWithZone object and the other value act like Time, a Float
  # will be returned.
  #
  # ```ruby
  # Time.zone.now - 1.day.ago # => 86399.999967
  # ```
  sig { params(other: T.untyped).returns(T.any(ActiveSupport::TimeWithZone, Float)) }
  def -(other); end

  # Subtracts an interval of time from the current object's time and returns
  # the result as a new TimeWithZone object.
  #
  # ```ruby
  # Time.zone = 'Eastern Time (US & Canada)' # => 'Eastern Time (US & Canada)'
  # now = Time.zone.now # => Mon, 03 Nov 2014 00:26:28 EST -05:00
  # now.ago(1000)       # => Mon, 03 Nov 2014 00:09:48 EST -05:00
  # ```
  #
  # If we're subtracting a Duration of variable length (i.e., years, months,
  # days), move backward from #time, otherwise move backward from #utc, for
  # accuracy when moving across DST boundaries.
  #
  # For instance, `time.ago(24.hours)` will move back exactly 24 hours,
  # while `time.ago(1.day)` will move back 23-25 hours, depending on
  # the day.
  #
  # ```ruby
  # now.ago(24.hours)   # => Sun, 02 Nov 2014 01:26:28 EDT -04:00
  # now.ago(1.day)      # => Sun, 02 Nov 2014 00:26:28 EDT -04:00
  # ```
  sig { params(other: T.any(Numeric, ActiveSupport::Duration)).returns(ActiveSupport::TimeWithZone) }
  def ago(other); end

  # Returns Array of parts of Time in sequence of
  # [seconds, minutes, hours, day, month, year, weekday, yearday, dst?, zone].
  #
  # ```ruby
  # now = Time.zone.now     # => Tue, 18 Aug 2015 02:29:27 UTC +00:00
  # now.to_a                # => [27, 29, 2, 18, 8, 2015, 2, 230, false, "UTC"]
  # ```
  sig { returns([Integer, Integer, Integer, Integer, Integer, Integer, Integer, Integer, T::Boolean, String]) }
  def to_a; end

  # Returns the object's date and time as a floating point number of seconds
  # since the Epoch (January 1, 1970 00:00 UTC).
  #
  # ```ruby
  # Time.zone.now.to_f # => 1417709320.285418
  # ```
  sig { returns(Float) }
  def to_f; end

  # Returns the object's date and time as an integer number of seconds
  # since the Epoch (January 1, 1970 00:00 UTC).
  #
  # ```ruby
  # Time.zone.now.to_i # => 1417709320
  # ```
  sig { returns(Integer) }
  def to_i; end

  # Returns the object's date and time as a rational number of seconds
  # since the Epoch (January 1, 1970 00:00 UTC).
  #
  # ```ruby
  # Time.zone.now.to_r # => (708854548642709/500000)
  # ```
  sig { returns(Rational) }
  def to_r; end

  sig { returns(Date) }
  def to_date; end

  # Returns an instance of DateTime with the timezone's UTC offset
  #
  # ```ruby
  # Time.zone.now.to_datetime                         # => Tue, 18 Aug 2015 02:32:20 +0000
  # Time.current.in_time_zone('Hawaii').to_datetime   # => Mon, 17 Aug 2015 16:32:20 -1000
  # ```
  sig { returns(DateTime) }
  def to_datetime; end

  # Returns an instance of `Time`, either with the same UTC offset
  # as `self` or in the local system timezone depending on the setting
  # of `ActiveSupport.to_time_preserves_timezone`.
  sig { returns(Time) }
  def to_time; end

  # Uses Date to provide precise Time calculations for years, months, and days according to the proleptic Gregorian calendar.
  # The result is returned as a new `TimeWithZone` object.
  # The options parameter takes a hash with any of these keys: :years, :months, :weeks, :days, :hours, :minutes, :seconds.
  # If advancing by a value of variable length (i.e., years, weeks, months, days), move forward from `time`, otherwise move forward
  # from utc, for accuracy when moving across DST boundaries.
  sig { params(options: T::Hash[Symbol, Numeric]).returns(ActiveSupport::TimeWithZone) }
  def advance(options); end

  sig { params(options: T::Hash[Symbol, T.untyped]).returns(ActiveSupport::TimeWithZone) }
  def change(options); end
end

module DateAndTime::Calculations
  sig { params(date_or_time: T.any(Date, Time, DateTime)).returns(T::Boolean) }
  def after?(date_or_time); end

  # Would ideally be typed as returning T::Range[T.self_type] but
  # it looks like you can't have T.self_type inside a generic.
  def all_day; end
  def all_month; end
  def all_quarter; end
  def all_week(start_day = T.unsafe(nil)); end
  def all_year; end

  sig { returns(T.self_type) }
  def at_beginning_of_month; end

  sig { returns(T.self_type) }
  def at_beginning_of_quarter; end

  sig { params(start_day: Symbol).returns(T.self_type) }
  def at_beginning_of_week(start_day = T.unsafe(nil)); end

  sig { returns(T.self_type) }
  def at_beginning_of_year; end

  sig { returns(T.self_type) }
  def at_end_of_month; end

  sig { returns(T.self_type) }
  def at_end_of_quarter; end

  sig { params(start_day: Symbol).returns(T.self_type) }
  def at_end_of_week(start_day = T.unsafe(nil)); end

  sig { returns(T.self_type) }
  def at_end_of_year; end

  sig { params(date_or_time: T.any(Date, Time, DateTime)).returns(T::Boolean) }
  def before?(date_or_time); end

  sig { returns(T.self_type) }
  def beginning_of_month; end

  sig { returns(T.self_type) }
  def beginning_of_quarter; end

  sig { params(start_day: Symbol).returns(T.self_type) }
  def beginning_of_week(start_day = T.unsafe(nil)); end

  sig { returns(T.self_type) }
  def beginning_of_year; end

  sig { params(days: Numeric).returns(T.self_type) }
  def days_ago(days); end

  sig { params(days: Numeric).returns(T.self_type) }
  def days_since(days); end

  sig { params(start_day: Symbol).returns(T.self_type) }
  def days_to_week_start(start_day = T.unsafe(nil)); end

  sig { returns(T.self_type) }
  def end_of_month; end

  sig { returns(T.self_type) }
  def end_of_quarter; end

  sig { params(start_day: Symbol).returns(T.self_type) }
  def end_of_week(start_day = T.unsafe(nil)); end

  sig { returns(T.self_type) }
  def end_of_year; end

  sig { returns(T::Boolean) }
  def future?; end

  sig { returns(T.self_type) }
  def last_month; end

  sig { returns(T.self_type) }
  def last_quarter; end

  sig { params(start_day: Symbol, same_time: T::Boolean).returns(T.self_type) }
  def last_week(start_day = T.unsafe(nil), same_time: T.unsafe(nil)); end

  sig { returns(T.self_type) }
  def last_weekday; end

  sig { returns(T.self_type) }
  def last_year; end

  sig { returns(T.self_type) }
  def monday; end

  sig { params(months: Numeric).returns(T.self_type) }
  def months_ago(months); end

  sig { params(months: Numeric).returns(T.self_type) }
  def months_since(months); end

  sig { params(day_of_week: Symbol).returns(T.self_type) }
  def next_occurring(day_of_week); end

  sig { returns(T.self_type) }
  def next_quarter; end

  sig { params(given_day_in_next_week: Symbol, same_time: T::Boolean).returns(T.self_type) }
  def next_week(given_day_in_next_week = T.unsafe(nil), same_time: T.unsafe(nil)); end

  sig { returns(T.self_type) }
  def next_weekday; end

  sig { returns(T::Boolean) }
  def on_weekday?; end

  sig { returns(T::Boolean) }
  def on_weekend?; end

  sig { returns(T::Boolean) }
  def past?; end

  sig { params(day_of_week: Symbol).returns(T.self_type) }
  def prev_occurring(day_of_week); end

  sig { returns(T.self_type) }
  def prev_quarter; end

  sig { params(start_day: Symbol, same_time: T::Boolean).returns(T.self_type) }
  def prev_week(start_day = T.unsafe(nil), same_time: T.unsafe(nil)); end

  sig { returns(T.self_type) }
  def prev_weekday; end

  sig { returns(T.self_type) }
  def sunday; end

  sig { returns(T::Boolean) }
  def today?; end

  sig { returns(T.self_type) }
  def tomorrow; end

  sig { params(weeks: Numeric).returns(T.self_type) }
  def weeks_ago(weeks); end

  sig { params(weeks: Numeric).returns(T.self_type) }
  def weeks_since(weeks); end

  sig { params(years: Numeric).returns(T.self_type) }
  def years_ago(years); end

  sig { params(years: Numeric).returns(T.self_type) }
  def years_since(years); end

  sig { returns(T.self_type) }
  def yesterday; end

  private

  def copy_time_to(other); end
  def days_span(day); end
  def first_hour(date_or_time); end
  def last_hour(date_or_time); end
end

DateAndTime::Calculations::DAYS_INTO_WEEK = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

DateAndTime::Calculations::WEEKEND_DAYS = T.let(T.unsafe(nil), T::Array[T.untyped])

# defines some of the methods at https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/date
# this is not a complete definition!
class Date
  include(::DateAndTime::Calculations)

  DATE_FORMATS = T.let(nil, T::Hash[Symbol, T.untyped])

  sig { params(options: T::Hash[Symbol, Integer]).returns(Date) }
  def advance(options); end

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
  def at_end_of_day; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def end_of_day; end

  # these are the sigs for Date- in the stdlib
  # https://github.com/sorbet/sorbet/blob/3910f6cfd9935c9b42e2135e32e15ab8a6e5b9be/rbi/stdlib/date.rbi#L373
  # note that if more sigs are added to sorbet you should replicate them here
  # check sorbet master: https://github.com/sorbet/sorbet/blob/master/rbi/stdlib/date.rbi
  sig {params(arg0: Numeric).returns(T.self_type)}
  sig {params(arg0: Date).returns(Rational)}
  # these sigs are added for activesupport users
  sig {params(arg0: ActiveSupport::Duration).returns(T.self_type)}
  def -(arg0); end

  sig { params(format: Symbol).returns(String) }
  def to_formatted_s(format = :default); end

  sig { returns(Integer) }
  def to_i; end

  class << self
    sig { returns(T.attached_class) }
    def tomorrow; end

    sig { returns(T.attached_class) }
    def yesterday; end

    sig { returns(T.attached_class) }
    def current; end
  end
end

# defines some of the methods at https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/time
# this is not a complete definition!
class Time
  include(::DateAndTime::Calculations)

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

  sig { returns(Time) }
  def at_end_of_day; end

  sig { returns(Time) }
  def end_of_day; end

  # https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/date_and_time/zones.rb
  # returns Time in the case zone is passed nil and ActiveSupport::TimeWithZone otherwise
  sig { params(zone: T.nilable(T.any(String, ActiveSupport::TimeZone))).returns(T.any(ActiveSupport::TimeWithZone, Time)) }
  def in_time_zone(zone = ::Time.zone); end

  # these are the sigs for Time- in the stdlib
  # https://github.com/sorbet/sorbet/blob/c3691753e4ce545e1eb66cbd3e55de67d8879b98/rbi/core/time.rbi#L347
  # note that if more sigs are added to sorbet you should replicate them here
  # check sorbet master: https://github.com/sorbet/sorbet/blob/master/rbi/core/time.rbi#L347
  sig do
    params(
        arg0: Time,
    )
    .returns(Float)
  end
  sig do
    params(
        arg0: Numeric,
    )
    .returns(Time)
  end
  # these sigs are added for activesupport users
  sig { params(arg0: ActiveSupport::Duration).returns(Time) }
  def -(arg0); end

  sig { params(format: Symbol).returns(String) }
  def to_formatted_s(format = :default); end

  sig { returns(ActiveSupport::TimeWithZone) }
  def self.current; end

  # Returns the TimeZone for the current request, if this has been set (via Time.zone=).
  # If `Time.zone` has not been set for the current request, returns the TimeZone specified in `config.time_zone`.
  sig { returns(ActiveSupport::TimeZone) }
  def self.zone; end

  # Sets `Time.zone` to a TimeZone object for the current request/thread.
  #
  # This method accepts any of the following:
  #
  # * A Rails TimeZone object.
  # * An identifier for a Rails TimeZone object (e.g., "Eastern Time (US & Canada)", `-5.hours`).
  # * A TZInfo::Timezone object.
  # * An identifier for a TZInfo::Timezone object (e.g., "America/New_York").
  #
  # Here's an example of how you might set `Time.zone` on a per request basis and reset it when the request is done.
  # `current_user.time_zone` just needs to return a string identifying the user's preferred time zone:
  #
  # ```ruby
  # class ApplicationController < ActionController::Base
  #   around_action :set_time_zone
  #
  #   def set_time_zone
  #     if logged_in?
  #       Time.use_zone(current_user.time_zone) { yield }
  #     else
  #       yield
  #     end
  #   end
  # end
  # ```
  sig { params(time_zone: T.any(String, TZInfo::Timezone, ActiveSupport::TimeZone, ActiveSupport::Duration)).void }
  def self.zone=(time_zone); end
end

class ActiveSupport::TimeZone
  # Locate a specific time zone object. If the argument is a string, it
  # is interpreted to mean the name of the timezone to locate. If it is a
  # numeric value it is either the hour offset, or the second offset, of the
  # timezone to find. (The first one with that offset will be returned.)
  # Returns `nil` if no such time zone is known to the system.
  sig { params(arg: T.any(String, Numeric, ActiveSupport::Duration)).returns(T.nilable(ActiveSupport::TimeZone)) }
  def self.[](arg); end

  # Returns an array of all TimeZone objects. There are multiple
  # TimeZone objects per time zone, in many cases, to make it easier
  # for users to find their own time zone.
  sig { returns(T::Array[ActiveSupport::TimeZone]) }
  def self.all; end

  # A convenience method for returning a collection of TimeZone objects
  # for time zones in the USA.
  sig { returns(T::Array[ActiveSupport::TimeZone]) }
  def self.us_zones; end

  # A convenience method for returning a collection of TimeZone objects
  # for time zones in the country specified by its ISO 3166-1 Alpha2 code.
  sig { params(country_code: T.any(String, Symbol)).returns(T::Array[ActiveSupport::TimeZone]) }
  def self.country_zones(country_code); end

  # Returns an ActiveSupport::TimeWithZone instance representing the current
  # time in the time zone represented by `self`.
  #
  # ```ruby
  # Time.zone = 'Hawaii'  # => "Hawaii"
  # Time.zone.now         # => Wed, 23 Jan 2008 20:24:27 HST -10:00
  # ```
  sig { returns(ActiveSupport::TimeWithZone) }
  def now; end

  # Returns the current date in this time zone.
  sig { returns(Date) }
  def today; end

  # Returns the next date in this time zone.
  sig { returns(Date) }
  def tomorrow; end

  # Returns the previous date in this time zone.
  sig { returns(Date) }
  def yesterday; end

  # Method for creating new ActiveSupport::TimeWithZone instance in time zone
  # of `self` from given values.
  #
  # ```ruby
  # Time.zone = 'Hawaii'                    # => "Hawaii"
  # Time.zone.local(2007, 2, 1, 15, 30, 45) # => Thu, 01 Feb 2007 15:30:45 HST -10:00
  # ```
  sig { params(args: T.untyped).returns(ActiveSupport::TimeWithZone) }
  def local(*args); end
end

# defines some of the methods at https://github.com/rails/rails/tree/v6.0.0/activesupport/lib/active_support/core_ext/hash
# this is not a complete definition!
class Hash
  sig { params(other_hash: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
  def deep_merge(other_hash, &block); end

  sig { params(keys: T.untyped).returns(T.self_type) }
  def except(*keys); end

  sig { returns(T::Hash[String, V]) }
  def stringify_keys; end

  sig { returns(T::Hash[String, V]) }
  def stringify_keys!; end

  sig { returns(T::Hash[String, V]) }
  def deep_stringify_keys; end

  sig { returns(T::Hash[String, V]) }
  def deep_stringify_keys!; end

  sig { returns(T::Hash[Symbol, V]) }
  def symbolize_keys; end

  sig { returns(T::Hash[Symbol, V]) }
  def symbolize_keys!; end

  sig { returns(T::Hash[Symbol, V]) }
  def deep_symbolize_keys; end

  sig { returns(T::Hash[Symbol, V]) }
  def deep_symbolize_keys!; end

  # in an ideal world, `arg` would be the type of all keys, the 1st `T.untyped` would be
  # the type of keys your block returns, and the 2nd `T.untyped` would be the type of values
  # that the hash had.
  sig { params(block: T.proc.params(arg: T.untyped).void).returns(T::Hash[T.untyped, V]) }
  def deep_transform_keys(&block); end

  sig { params(block: T.proc.params(arg: T.untyped).void).returns(T::Hash[T.untyped, V]) }
  def deep_transform_keys!(&block); end

  sig { returns(T::Hash[Symbol, V]) }
  def to_options; end

  sig { params(namespace: T.untyped).returns(String) }
  def to_query(namespace = nil); end
end

HashWithIndifferentAccess = ActiveSupport::HashWithIndifferentAccess

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

  KILOBYTE = T.let(1024, Integer)
  MEGABYTE = T.let(KILOBYTE * 1024, Integer)
  GIGABYTE = T.let(MEGABYTE * 1024, Integer)
  TERABYTE = T.let(GIGABYTE * 1024, Integer)
  PETABYTE = T.let(TERABYTE * 1024, Integer)
  EXABYTE  = T.let(PETABYTE * 1024, Integer)

  # Enables the use of byte calculations and declarations, like 45.bytes + 2.6.megabytes
  #
  # ```ruby
  # 2.bytes # => 2
  # ```
  sig { returns(T.self_type) }
  def byte; end

  # Enables the use of byte calculations and declarations, like 45.bytes + 2.6.megabytes
  #
  # ```ruby
  # 2.bytes # => 2
  # ```
  sig { returns(T.self_type) }
  def bytes; end

  # Returns the number of bytes equivalent to the kilobytes provided.
  #
  # ```ruby
  # 2.kilobytes # => 2048
  # ```
  sig { returns(T.self_type) }
  def kilobyte; end

  # Returns the number of bytes equivalent to the kilobytes provided.
  #
  # ```ruby
  # 2.kilobytes # => 2048
  # ```
  sig { returns(T.self_type) }
  def kilobytes; end

  # Returns the number of bytes equivalent to the megabytes provided.
  #
  # ```ruby
  # 2.megabytes # => 2_097_152
  # ```
  sig { returns(T.self_type) }
  def megabyte; end

  # Returns the number of bytes equivalent to the megabytes provided.
  #
  # ```ruby
  # 2.megabytes # => 2_097_152
  # ```
  sig { returns(T.self_type) }
  def megabytes; end

  # Returns the number of bytes equivalent to the gigabytes provided.
  #
  # ```ruby
  # 2.gigabytes # => 2_147_483_648
  # ```
  sig { returns(T.self_type) }
  def gigabyte; end

  # Returns the number of bytes equivalent to the gigabytes provided.
  #
  # ```ruby
  # 2.gigabytes # => 2_147_483_648
  # ```
  sig { returns(T.self_type) }
  def gigabytes; end

  # Returns the number of bytes equivalent to the terabytes provided.
  #
  # ```ruby
  # 2.terabytes # => 2_199_023_255_552
  # ```
  sig { returns(T.self_type) }
  def terabyte; end

  # Returns the number of bytes equivalent to the terabytes provided.
  #
  # ```ruby
  # 2.terabytes # => 2_199_023_255_552
  # ```
  sig { returns(T.self_type) }
  def terabytes; end

  # Returns the number of bytes equivalent to the petabytes provided.
  #
  # ```ruby
  # 2.petabytes # => 2_251_799_813_685_248
  # ```
  sig { returns(T.self_type) }
  def petabyte; end

  # Returns the number of bytes equivalent to the petabytes provided.
  #
  # ```ruby
  # 2.petabytes # => 2_251_799_813_685_248
  # ```
  sig { returns(T.self_type) }
  def petabytes; end

  # Returns the number of bytes equivalent to the exabytes provided.
  #
  # ```ruby
  # 2.exabytes # => 2_305_843_009_213_693_952
  # ```
  sig { returns(T.self_type) }
  def exabyte; end

  # Returns the number of bytes equivalent to the exabytes provided.
  #
  # ```ruby
  # 2.exabytes # => 2_305_843_009_213_693_952
  # ```
  sig { returns(T.self_type) }
  def exabytes; end
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

  sig { params(object: Object).returns(T::Boolean) }
  def exclude?(object); end

  sig { returns(T::Boolean) }
  def many?(&block); end

  def pluck(*keys); end
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

  sig { params(time: T.any(ActiveSupport::TimeWithZone, Date)).returns(ActiveSupport::TimeWithZone) }
  def from_now(time = Time.current); end

  sig { params(time: T.any(ActiveSupport::TimeWithZone, Date)).returns(ActiveSupport::TimeWithZone) }
  def ago(time = Time.current); end

  sig { returns(Numeric) }
  def value; end
end

module Benchmark
  extend T::Sig

  sig { params(block: T.proc.void).returns(Float) }
  def self.ms(&block); end
end

module ActiveSupport::Autoload
  def autoload(const_name, path = T.unsafe(nil)); end
  def autoload_at(path); end
  def autoload_under(path); end
  def autoloads; end
  def eager_autoload; end
  def eager_load!; end

  class << self
    def extended(base); end
  end
end

module ActiveSupport::Benchmarkable
  def benchmark(message = T.unsafe(nil), options = T.unsafe(nil)); end
end

class ActiveSupport::Cache::Store
  def initialize(options = T.unsafe(nil)); end

  def cleanup(options = T.unsafe(nil)); end
  def clear(options = T.unsafe(nil)); end
  def decrement(name, amount = T.unsafe(nil), options = T.unsafe(nil)); end
  def delete(name, options = T.unsafe(nil)); end
  def delete_matched(matcher, options = T.unsafe(nil)); end
  def exist?(name, options = T.unsafe(nil)); end
  def fetch(name, options = T.unsafe(nil)); end
  def fetch_multi(*names); end
  def increment(name, amount = T.unsafe(nil), options = T.unsafe(nil)); end
  def logger; end
  def logger=(obj); end
  def mute; end
  def options; end
  def read(name, options = T.unsafe(nil)); end
  def read_multi(*names); end
  def silence; end
  def silence!; end
  def silence?; end
  def write(name, value, options = T.unsafe(nil)); end
  def write_multi(hash, options = T.unsafe(nil)); end

  private

  def delete_entry(key, **options); end
  def expanded_key(key); end
  def expanded_version(key); end
  def get_entry_value(entry, name, options); end
  def handle_expired_entry(entry, key, options); end
  def instrument(operation, key, options = T.unsafe(nil)); end
  def key_matcher(pattern, options); end
  def log; end
  def merged_options(call_options); end
  def namespace_key(key, options = T.unsafe(nil)); end
  def normalize_key(key, options = T.unsafe(nil)); end
  def normalize_version(key, options = T.unsafe(nil)); end
  def read_entry(key, **options); end
  def read_multi_entries(names, **options); end
  def save_block_result_to_cache(name, **options); end
  def write_entry(key, entry, **options); end
  def write_multi_entries(hash, **options); end

  class << self
    def logger; end
    def logger=(obj); end

    private

    def ensure_connection_pool_added!; end
    def retrieve_pool_options(options); end
  end
end

class ActiveSupport::Cache::FileStore < ::ActiveSupport::Cache::Store
  include(::ActiveSupport::Cache::Strategy::LocalCache)

  def initialize(cache_path, options = T.unsafe(nil)); end

  def cache_path; end
  def delete_matched(matcher, options = T.unsafe(nil)); end

  private

  def delete_empty_directories(dir); end
  def ensure_cache_path(path); end
  def file_path_key(path); end
  def lock_file(file_name, &block); end
  def modify_value(name, amount, options); end
  def normalize_key(key, options); end
  def search_dir(dir, &callback); end

  class << self
    def supports_cache_versioning?; end
  end
end

ActiveSupport::Cache::FileStore::DIR_FORMATTER = T.let(T.unsafe(nil), String)

ActiveSupport::Cache::FileStore::FILENAME_MAX_SIZE = T.let(T.unsafe(nil), Integer)

ActiveSupport::Cache::FileStore::FILEPATH_MAX_SIZE = T.let(T.unsafe(nil), Integer)

ActiveSupport::Cache::FileStore::GITKEEP_FILES = T.let(T.unsafe(nil), T::Array[T.untyped])

class ActiveSupport::Cache::MemoryStore < ::ActiveSupport::Cache::Store
  def initialize(options = T.unsafe(nil)); end

  def cleanup(options = T.unsafe(nil)); end
  def clear(options = T.unsafe(nil)); end
  def decrement(name, amount = T.unsafe(nil), options = T.unsafe(nil)); end
  def delete_matched(matcher, options = T.unsafe(nil)); end
  def increment(name, amount = T.unsafe(nil), options = T.unsafe(nil)); end
  def inspect; end
  def prune(target_size, max_time = T.unsafe(nil)); end
  def pruning?; end
  def synchronize(&block); end

  private

  def cached_size(key, entry); end
  def delete_entry(key, **options); end
  def modify_value(name, amount, options); end
  def read_entry(key, **options); end
  def write_entry(key, entry, **options); end

  class << self
    def supports_cache_versioning?; end
  end
end

ActiveSupport::Cache::MemoryStore::PER_ENTRY_OVERHEAD = T.let(T.unsafe(nil), Integer)

class ActiveSupport::Cache::NullStore < ::ActiveSupport::Cache::Store
  include(::ActiveSupport::Cache::Strategy::LocalCache)

  def delete_matched(matcher, options = T.unsafe(nil)); end

  class << self
    def supports_cache_versioning?; end
  end
end

module ActiveSupport::Cache::Strategy::LocalCache
  def cleanup(**options); end
  def clear(**options); end
  def decrement(name, amount = T.unsafe(nil), **options); end
  def increment(name, amount = T.unsafe(nil), **options); end
  def middleware; end
  def with_local_cache; end

  private

  def bypass_local_cache; end
  def delete_entry(key, **options); end
  def local_cache; end
  def local_cache_key; end
  def read_entry(key, **options); end
  def read_multi_entries(keys, **options); end
  def use_temporary_local_cache(temporary_cache); end
  def write_cache_value(name, value, **options); end
  def write_entry(key, entry, **options); end
end

module ActiveSupport::Callbacks
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveSupport::Callbacks::ClassMethods)

  def run_callbacks(kind); end

  private

  def halted_callback_hook(filter); end
end

module ActiveSupport::Callbacks::ClassMethods
  def __update_callbacks(name); end
  def define_callbacks(*names); end
  def normalize_callback_params(filters, block); end
  def reset_callbacks(name); end
  def set_callback(name, *filter_list, &block); end
  def skip_callback(name, *filter_list, &block); end

  protected

  def get_callbacks(name); end
  def set_callbacks(name, callbacks); end
end

module ActiveSupport::Concern
  def append_features(base); end
  def class_methods(&class_methods_module_definition); end
  def included(base = T.unsafe(nil), &block); end

  class << self
    def extended(base); end
  end
end

class ActiveSupport::Concern::MultipleIncludedBlocks < ::StandardError
  def initialize; end
end

module ActiveSupport::Configurable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveSupport::Configurable::ClassMethods)

  def config; end
end

module ActiveSupport::Configurable::ClassMethods
  def config; end
  def configure; end

  private

  def config_accessor(*names, instance_reader: T.unsafe(nil), instance_writer: T.unsafe(nil), instance_accessor: T.unsafe(nil)); end
end

class ActiveSupport::Configurable::Configuration < ::ActiveSupport::InheritableOptions
  K = type_member(fixed: T.untyped)
  V = type_member(fixed: T.untyped)
  Elem = type_member(fixed: T.untyped)

  def compile_methods!; end

  class << self
    def compile_methods!(keys); end
  end
end

module ActiveSupport::Dependencies
  extend(::ActiveSupport::Dependencies)

  def _eager_load_paths; end
  def _eager_load_paths=(obj); end
  def autoload_module!(into, const_name, qualified_name, path_suffix); end
  def autoload_once_paths; end
  def autoload_once_paths=(obj); end
  def autoload_paths; end
  def autoload_paths=(obj); end
  def autoloadable_module?(path_suffix); end
  def autoloaded?(desc); end
  def autoloaded_constants; end
  def autoloaded_constants=(obj); end
  def clear; end
  def constant_watch_stack; end
  def constant_watch_stack=(obj); end
  def constantize(name); end
  def depend_on(file_name, message = T.unsafe(nil)); end
  def explicitly_unloadable_constants; end
  def explicitly_unloadable_constants=(obj); end
  def history; end
  def history=(obj); end
  def hook!; end
  def interlock; end
  def interlock=(obj); end
  def load?; end
  def load_file(path, const_paths = T.unsafe(nil)); end
  def load_missing_constant(from_mod, const_name); end
  def load_once_path?(path); end
  def loadable_constants_for_path(path, bases = T.unsafe(nil)); end
  def loaded; end
  def loaded=(obj); end
  def loading; end
  def loading=(obj); end
  def log(message); end
  def logger; end
  def logger=(obj); end
  def mark_for_unload(const_desc); end
  def mechanism; end
  def mechanism=(obj); end
  def new_constants_in(*descs); end
  def qualified_const_defined?(path); end
  def qualified_name_for(mod, name); end
  def reference(klass); end
  def remove_constant(const); end
  def remove_unloadable_constants!; end
  def require_or_load(file_name, const_path = T.unsafe(nil)); end
  def safe_constantize(name); end
  def search_for_file(path_suffix); end
  def to_constant_name(desc); end
  def unhook!; end
  def verbose; end
  def verbose=(obj); end
  def warnings_on_first_load; end
  def warnings_on_first_load=(obj); end
  def will_unload?(const_desc); end

  private

  def real_mod_name(mod); end

  class << self
    def _eager_load_paths; end
    def _eager_load_paths=(obj); end
    def autoload_once_paths; end
    def autoload_once_paths=(obj); end
    def autoload_paths; end
    def autoloaded_constants; end
    def autoloaded_constants=(obj); end
    def constant_watch_stack; end
    def constant_watch_stack=(obj); end
    def explicitly_unloadable_constants; end
    def explicitly_unloadable_constants=(obj); end
    def history; end
    def history=(obj); end
    def interlock; end
    def interlock=(obj); end
    def load_interlock; end
    def loaded; end
    def loaded=(obj); end
    def loading; end
    def loading=(obj); end
    def logger; end
    def logger=(obj); end
    def mechanism; end
    def mechanism=(obj); end
    def run_interlock; end
    def unload_interlock; end
    def verbose; end
    def verbose=(obj); end
    def warnings_on_first_load; end
    def warnings_on_first_load=(obj); end
  end
end

module ActiveSupport::Dependencies::Loadable
  def load_dependency(file); end
  def require_dependency(file_name, message = T.unsafe(nil)); end
  def require_or_load(file_name); end
  def unloadable(const_desc); end

  private

  def load(file, wrap = T.unsafe(nil)); end
  def require(file); end

  class << self
    def exclude_from(base); end
    def include_into(base); end
  end
end

class ActiveSupport::Deprecation
  include(::Singleton)
  include(::ActiveSupport::Deprecation::InstanceDelegator)
  include(::ActiveSupport::Deprecation::Behavior)
  include(::ActiveSupport::Deprecation::Reporting)
  include(::ActiveSupport::Deprecation::MethodWrapper)
  extend(::Singleton::SingletonClassMethods)
  extend(::ActiveSupport::Deprecation::InstanceDelegator::ClassMethods)
  extend(::ActiveSupport::Deprecation::InstanceDelegator::OverrideDelegators)

  def initialize(deprecation_horizon = T.unsafe(nil), gem_name = T.unsafe(nil)); end

  def deprecation_horizon; end
  def deprecation_horizon=(_); end

  class << self
    def behavior(*_, &_); end
    def behavior=(arg); end
    def debug(*_, &_); end
    def debug=(arg); end
    def deprecate_methods(*_, &_); end
    def deprecation_horizon(*_, &_); end
    def deprecation_horizon=(arg); end
    def gem_name(*_, &_); end
    def gem_name=(arg); end
    def silence(*_, &_); end
    def silenced(*_, &_); end
    def silenced=(arg); end
  end
end

module ActiveSupport::Deprecation::Behavior
  def behavior; end
  def behavior=(behavior); end
  def debug; end
  def debug=(_); end

  private

  def arity_coerce(behavior); end
end

ActiveSupport::Deprecation::DEFAULT_BEHAVIORS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module ActiveSupport::Deprecation::DeprecatedConstantAccessor
  class << self
    def included(base); end
  end
end

class ActiveSupport::Deprecation::DeprecatedConstantProxy < ::Module
  def initialize(old_const, new_const, deprecator = T.unsafe(nil), message: T.unsafe(nil)); end

  def class; end
  def hash(*_, &_); end
  def inspect; end
  def instance_methods(*_, &_); end
  def name(*_, &_); end

  private

  def const_missing(name); end
  def method_missing(called, *args, &block); end
  def target; end

  class << self
    def new(*args, **kwargs, &block); end
  end
end

class ActiveSupport::Deprecation::DeprecatedInstanceVariableProxy < ::ActiveSupport::Deprecation::DeprecationProxy
  def initialize(instance, method, var = T.unsafe(nil), deprecator = T.unsafe(nil)); end


  private

  def target; end
  def warn(callstack, called, args); end
end

class ActiveSupport::Deprecation::DeprecatedObjectProxy < ::ActiveSupport::Deprecation::DeprecationProxy
  def initialize(object, message, deprecator = T.unsafe(nil)); end


  private

  def target; end
  def warn(callstack, called, args); end
end

class ActiveSupport::Deprecation::DeprecationProxy
  def inspect; end

  private

  def method_missing(called, *args, &block); end

  class << self
    def new(*args, &block); end
  end
end

module ActiveSupport::Deprecation::InstanceDelegator
  mixes_in_class_methods(::ActiveSupport::Deprecation::InstanceDelegator::OverrideDelegators)

  class << self
    def included(base); end
  end
end

module ActiveSupport::Deprecation::InstanceDelegator::ClassMethods
  def include(included_module); end
  def method_added(method_name); end
end

module ActiveSupport::Deprecation::InstanceDelegator::OverrideDelegators
  def deprecation_warning(deprecated_method_name, message = T.unsafe(nil), caller_backtrace = T.unsafe(nil)); end
  def warn(message = T.unsafe(nil), callstack = T.unsafe(nil)); end
end

module ActiveSupport::Deprecation::MethodWrapper
  def deprecate_methods(target_module, *method_names); end
end

module ActiveSupport::Deprecation::Reporting
  def deprecation_warning(deprecated_method_name, message = T.unsafe(nil), caller_backtrace = T.unsafe(nil)); end
  def gem_name; end
  def gem_name=(_); end
  def silence; end
  def silenced; end
  def silenced=(_); end
  def warn(message = T.unsafe(nil), callstack = T.unsafe(nil)); end

  private

  def _extract_callstack(callstack); end
  def deprecated_method_warning(method_name, message = T.unsafe(nil)); end
  def deprecation_caller_message(callstack); end
  def deprecation_message(callstack, message = T.unsafe(nil)); end
  def extract_callstack(callstack); end
  def ignored_callstack(path); end
end

ActiveSupport::Deprecation::Reporting::RAILS_GEM_ROOT = T.let(T.unsafe(nil), String)

class ActiveSupport::DeprecationException < ::StandardError
end

module ActiveSupport::DescendantsTracker
  def descendants; end
  def direct_descendants; end
  def inherited(base); end

  class << self
    def clear; end
    def descendants(klass); end
    def direct_descendants(klass); end
    def store_inherited(klass, descendant); end

    private

    def accumulate_descendants(klass, acc); end
  end
end

class ActiveSupport::EventedFileUpdateChecker
  def initialize(files, dirs = T.unsafe(nil), &block); end

  def execute; end
  def execute_if_updated; end
  def updated?; end

  private

  def boot!; end
  def changed(modified, added, removed); end
  def directories_to_watch; end
  def normalize_dirs!; end
  def shutdown!; end
  def watching?(file); end
end

class ActiveSupport::EventedFileUpdateChecker::PathHelper
  def existing_parent(dir); end
  def filter_out_descendants(dirs); end
  def longest_common_subpath(paths); end
  def normalize_extension(ext); end
  def xpath(path); end

  private

  def ascendant_of?(base, other); end
end

class ActiveSupport::ExecutionWrapper
  include(::ActiveSupport::Callbacks)
  extend(::ActiveSupport::Callbacks::ClassMethods)
  extend(::ActiveSupport::DescendantsTracker)

  def __callbacks; end
  def __callbacks?; end
  def _complete_callbacks; end
  def _run_callbacks; end
  def _run_complete_callbacks(&block); end
  def _run_run_callbacks(&block); end
  def complete!; end
  def run!; end

  private

  def hook_state; end

  class << self
    def __callbacks; end
    def __callbacks=(val); end
    def __callbacks?; end
    def _complete_callbacks; end
    def _complete_callbacks=(value); end
    def _run_callbacks; end
    def _run_callbacks=(value); end
    def active; end
    def active=(_); end
    def active?; end
    def inherited(other); end
    def register_hook(hook, outer: T.unsafe(nil)); end
    def run!; end
    def to_complete(*args, &block); end
    def to_run(*args, &block); end
    def wrap; end
  end
end

class ActiveSupport::HashWithIndifferentAccess < Hash
  K = type_member(fixed: T.any(String, Symbol))
  V = type_member(fixed: T.untyped)
  Elem = type_member(fixed: T.untyped)
end

module ActiveSupport::JSON
  class << self
    def decode(json); end
    def encode(value, options = T.unsafe(nil)); end
    def parse_error; end

    private

    def convert_dates_from(data); end
  end
end

ActiveSupport::JSON::DATETIME_REGEX = T.let(T.unsafe(nil), Regexp)

ActiveSupport::JSON::DATE_REGEX = T.let(T.unsafe(nil), Regexp)

module ActiveSupport::JSON::Encoding
  class << self
    def escape_html_entities_in_json; end
    def escape_html_entities_in_json=(_); end
    def json_encoder; end
    def json_encoder=(_); end
    def time_precision; end
    def time_precision=(_); end
    def use_standard_json_time_format; end
    def use_standard_json_time_format=(_); end
  end
end

class ActiveSupport::JSON::Encoding::JSONGemEncoder
  def initialize(options = T.unsafe(nil)); end

  def encode(value); end
  def options; end

  private

  def jsonify(value); end
  def stringify(jsonified); end
end

class ActiveSupport::LogSubscriber < ::ActiveSupport::Subscriber
  def colorize_logging; end
  def colorize_logging=(obj); end
  def debug(progname = T.unsafe(nil), &block); end
  def error(progname = T.unsafe(nil), &block); end
  def fatal(progname = T.unsafe(nil), &block); end
  def finish(name, id, payload); end
  def info(progname = T.unsafe(nil), &block); end
  def logger; end
  def start(name, id, payload); end
  def unknown(progname = T.unsafe(nil), &block); end
  def warn(progname = T.unsafe(nil), &block); end

  private

  def color(text, color, bold = T.unsafe(nil)); end

  class << self
    def colorize_logging; end
    def colorize_logging=(obj); end
    def flush_all!; end
    def log_subscribers; end
    def logger; end
    def logger=(_); end
  end
end

ActiveSupport::LogSubscriber::BLACK = T.let(T.unsafe(nil), String)

ActiveSupport::LogSubscriber::BLUE = T.let(T.unsafe(nil), String)

ActiveSupport::LogSubscriber::BOLD = T.let(T.unsafe(nil), String)

ActiveSupport::LogSubscriber::CLEAR = T.let(T.unsafe(nil), String)

ActiveSupport::LogSubscriber::CYAN = T.let(T.unsafe(nil), String)

ActiveSupport::LogSubscriber::GREEN = T.let(T.unsafe(nil), String)

ActiveSupport::LogSubscriber::MAGENTA = T.let(T.unsafe(nil), String)

ActiveSupport::LogSubscriber::RED = T.let(T.unsafe(nil), String)

ActiveSupport::LogSubscriber::WHITE = T.let(T.unsafe(nil), String)

ActiveSupport::LogSubscriber::YELLOW = T.let(T.unsafe(nil), String)

class ActiveSupport::Logger < ::Logger
  include(::ActiveSupport::LoggerSilence)
  include(::ActiveSupport::LoggerThreadSafeLevel)

  def initialize(*args, **kwargs); end

  def silencer; end
  def silencer=(obj); end

  class << self
    def broadcast(logger); end
    def local_levels; end
    def local_levels=(obj); end
    def logger_outputs_to?(logger, *sources); end
    def silencer; end
    def silencer=(obj); end
  end
end

class ActiveSupport::Logger::SimpleFormatter < ::Logger::Formatter
  def call(severity, timestamp, progname, msg); end
end

module ActiveSupport::LoggerSilence
  extend(::ActiveSupport::Concern)

  include(::ActiveSupport::LoggerThreadSafeLevel)

  def silence(temporary_level = T.unsafe(nil)); end
end

module ActiveSupport::LoggerThreadSafeLevel
  extend(::ActiveSupport::Concern)

  def add(severity, message = T.unsafe(nil), progname = T.unsafe(nil), &block); end
  def after_initialize; end
  def debug?; end
  def error?; end
  def fatal?; end
  def info?; end
  def level; end
  def local_level; end
  def local_level=(level); end
  def local_log_id; end
  def unknown?; end
  def warn?; end
end

class ActiveSupport::MessageEncryptor
  include(::ActiveSupport::Messages::Rotator)
  include(::ActiveSupport::Messages::Rotator::Encryptor)

  def encrypt_and_sign(value, expires_at: T.unsafe(nil), expires_in: T.unsafe(nil), purpose: T.unsafe(nil)); end

  private

  def _decrypt(encrypted_message, purpose); end
  def _encrypt(value, **metadata_options); end
  def aead_mode?; end
  def new_cipher; end
  def resolve_verifier; end
  def verifier; end

  class << self
    def default_cipher; end
    def key_len(cipher = T.unsafe(nil)); end
    def use_authenticated_message_encryption; end
    def use_authenticated_message_encryption=(obj); end
  end
end

class ActiveSupport::MessageEncryptor::InvalidMessage < ::StandardError
end

module ActiveSupport::MessageEncryptor::NullSerializer
  class << self
    def dump(value); end
    def load(value); end
  end
end

module ActiveSupport::MessageEncryptor::NullVerifier
  class << self
    def generate(value); end
    def verify(value); end
  end
end

ActiveSupport::MessageEncryptor::OpenSSLCipherError = OpenSSL::Cipher::CipherError

class ActiveSupport::MessageVerifier
  include(::ActiveSupport::Messages::Rotator)
  include(::ActiveSupport::Messages::Rotator::Verifier)

  def generate(value, expires_at: T.unsafe(nil), expires_in: T.unsafe(nil), purpose: T.unsafe(nil)); end
  def valid_message?(signed_message); end
  def verify(*args, **options); end

  private

  def decode(data); end
  def encode(data); end
  def generate_digest(data); end
end

class ActiveSupport::MessageVerifier::InvalidSignature < ::StandardError
end

module ActiveSupport::Messages
end

class ActiveSupport::Messages::Metadata
  def initialize(message, expires_at = T.unsafe(nil), purpose = T.unsafe(nil)); end

  def as_json(options = T.unsafe(nil)); end
  def verify(purpose); end

  private

  def fresh?; end
  def match?(purpose); end

  class << self
    def verify(message, purpose); end
    def wrap(message, expires_at: T.unsafe(nil), expires_in: T.unsafe(nil), purpose: T.unsafe(nil)); end

    private

    def decode(message); end
    def encode(message); end
    def extract_metadata(message); end
    def pick_expiry(expires_at, expires_in); end
  end
end

class ActiveSupport::Messages::RotationConfiguration
  def initialize; end

  def encrypted; end
  def rotate(kind, *args); end
  def signed; end
end

module ActiveSupport::Messages::Rotator
  def initialize(*_, **options); end

  def rotate(*secrets, **options); end

  private

  def run_rotations(on_rotation); end
end

module ActiveSupport::Messages::Rotator::Encryptor
  include(::ActiveSupport::Messages::Rotator)

  def decrypt_and_verify(*args, on_rotation: T.unsafe(nil), **options); end

  private

  def build_rotation(secret = T.unsafe(nil), sign_secret = T.unsafe(nil), options); end
end

module ActiveSupport::Messages::Rotator::Verifier
  include(::ActiveSupport::Messages::Rotator)

  def verified(*args, on_rotation: T.unsafe(nil), **options); end

  private

  def build_rotation(secret = T.unsafe(nil), options); end
end

module ActiveSupport::Multibyte
  class << self
    def proxy_class; end
    def proxy_class=(klass); end
  end
end

class ActiveSupport::Multibyte::Chars
  include(::Comparable)

  def initialize(string); end

  def <=>(*_, &_); end
  def =~(*_, &_); end
  def acts_like_string?(*_, &_); end
  def as_json(options = T.unsafe(nil)); end
  def compose; end
  def decompose; end
  def grapheme_length; end
  def limit(limit); end
  def method_missing(method, *args, &block); end
  def normalize(form = T.unsafe(nil)); end
  def reverse; end
  def reverse!(*args); end
  def slice!(*args); end
  def split(*args); end
  def tidy_bytes(force = T.unsafe(nil)); end
  def tidy_bytes!(*args); end
  def titlecase; end
  def titleize; end
  def to_s; end
  def to_str; end
  def wrapped_string; end

  private

  def chars(string); end
  def respond_to_missing?(method, include_private); end

  class << self
    def consumes?(string); end
  end
end

module ActiveSupport::Multibyte::Unicode
  extend(::ActiveSupport::Multibyte::Unicode)

  def compose(codepoints); end
  def decompose(type, codepoints); end
  def default_normalization_form; end
  def default_normalization_form=(_); end
  def downcase(string); end
  def normalize(string, form = T.unsafe(nil)); end
  def pack_graphemes(unpacked); end
  def swapcase(string); end
  def tidy_bytes(string, force = T.unsafe(nil)); end
  def unpack_graphemes(string); end
  def upcase(string); end

  private

  def recode_windows1252_chars(string); end
end

ActiveSupport::Multibyte::Unicode::NORMALIZATION_FORMS = T.let(T.unsafe(nil), T::Array[T.untyped])

ActiveSupport::Multibyte::Unicode::NORMALIZATION_FORM_ALIASES = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

ActiveSupport::Multibyte::Unicode::UNICODE_VERSION = T.let(T.unsafe(nil), String)

module ActiveSupport::Notifications
  class << self
    def instrument(name, payload = T.unsafe(nil)); end
    def instrumenter; end
    def notifier; end
    def notifier=(_); end
    def publish(name, *args); end
    def subscribe(*args, &block); end
    def subscribed(callback, *args, &block); end
    def unsubscribe(subscriber_or_name); end
  end
end

class ActiveSupport::Notifications::Event
  def initialize(name, start, ending, transaction_id, payload); end

  def <<(event); end
  def allocations; end
  def children; end
  def cpu_time; end
  def duration; end
  def end; end
  def end=(ending); end
  def finish!; end
  def idle_time; end
  def name; end
  def parent_of?(event); end
  def payload; end
  def start!; end
  def time; end
  def transaction_id; end

  private

  def now; end
  def now_allocations; end
  def now_cpu; end

  class << self

    private

    def clock_gettime_supported?; end
  end
end

class ActiveSupport::OrderedHash < ::Hash
  K = type_member(fixed: T.untyped)
  V = type_member(fixed: T.untyped)
  Elem = type_member(fixed: T.untyped)
end

class ActiveSupport::OrderedOptions < ::Hash
  K = type_member(fixed: T.untyped)
  V = type_member(fixed: T.untyped)
  Elem = type_member(fixed: T.untyped)
end

class ActiveSupport::ParameterFilter
  def initialize(filters = T.unsafe(nil), mask: T.unsafe(nil)); end

  def filter(params); end
  def filter_param(key, value); end

  private

  def compiled_filter; end
end

class ActiveSupport::ParameterFilter::CompiledFilter
  def initialize(regexps, deep_regexps, blocks, mask:); end

  def blocks; end
  def call(params, parents = T.unsafe(nil), original_params = T.unsafe(nil)); end
  def deep_regexps; end
  def regexps; end
  def value_for_key(key, value, parents = T.unsafe(nil), original_params = T.unsafe(nil)); end

  class << self
    def compile(filters, mask:); end
  end
end

ActiveSupport::ParameterFilter::FILTERED = T.let(T.unsafe(nil), String)

class ActiveSupport::Reloader < ::ActiveSupport::ExecutionWrapper
  def initialize; end

  def _class_unload_callbacks; end
  def _prepare_callbacks; end
  def _run_class_unload_callbacks(&block); end
  def _run_prepare_callbacks(&block); end
  def check; end
  def check=(val); end
  def check?; end
  def class_unload!(&block); end
  def complete!; end
  def executor; end
  def executor=(val); end
  def executor?; end
  def release_unload_lock!; end
  def require_unload_lock!; end
  def run!; end

  class << self
    def __callbacks; end
    def _class_unload_callbacks; end
    def _class_unload_callbacks=(value); end
    def _prepare_callbacks; end
    def _prepare_callbacks=(value); end
    def after_class_unload(*args, &block); end
    def before_class_unload(*args, &block); end
    def check; end
    def check!; end
    def check=(val); end
    def check?; end
    def executor; end
    def executor=(val); end
    def executor?; end
    def prepare!; end
    def reload!; end
    def reloaded!; end
    def run!; end
    def to_prepare(*args, &block); end
    def wrap; end
  end
end

module ActiveSupport::Rescuable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::ActiveSupport::Rescuable::ClassMethods)

  def handler_for_rescue(exception); end
  def rescue_with_handler(exception); end
end

module ActiveSupport::Rescuable::ClassMethods
  def handler_for_rescue(exception, object: T.unsafe(nil)); end

  # https://github.com/rails/rails/blob/5-2-stable/activesupport/lib/active_support/rescuable.rb#L51
  sig { params(klasses: Class, with: T.nilable(Symbol), block: T.nilable(T.proc.params(error: T.untyped).void)).void }
  def rescue_from(*klasses, with: T.unsafe(nil), &block); end

  def rescue_with_handler(exception, object: T.unsafe(nil), visited_exceptions: T.unsafe(nil)); end

  private

  def constantize_rescue_handler_class(class_or_name); end
  def find_rescue_handler(exception); end
end

class ActiveSupport::SafeBuffer < ::String
  def initialize(str = T.unsafe(nil)); end
end

class ActiveSupport::SafeBuffer::SafeConcatError < ::StandardError
  def initialize; end
end

ActiveSupport::SafeBuffer::UNSAFE_STRING_METHODS = T.let(T.unsafe(nil), T::Array[T.untyped])

ActiveSupport::SafeBuffer::UNSAFE_STRING_METHODS_WITH_BACKREF = T.let(T.unsafe(nil), T::Array[T.untyped])

module ActiveSupport::SecurityUtils

  private

  def fixed_length_secure_compare(a, b); end
  def secure_compare(a, b); end

  class << self
    def fixed_length_secure_compare(a, b); end
    def secure_compare(a, b); end
  end
end

class ActiveSupport::StringInquirer < ::String

  private

  def method_missing(method_name, *arguments); end
  def respond_to_missing?(method_name, include_private = T.unsafe(nil)); end
end

class ActiveSupport::Subscriber
  def initialize; end

  def finish(name, id, payload); end
  def patterns; end
  def start(name, id, payload); end

  private

  def event_stack; end

  class << self
    def attach_to(namespace, subscriber = T.unsafe(nil), notifier = T.unsafe(nil)); end
    def detach_from(namespace, notifier = T.unsafe(nil)); end
    def method_added(event); end
    def subscribers; end

    private

    def add_event_subscriber(event); end
    def find_attached_subscriber; end
    def invalid_event?(event); end
    def namespace; end
    def notifier; end
    def pattern_subscribed?(pattern); end
    def prepare_pattern(event); end
    def remove_event_subscriber(event); end
    def subscriber; end
  end
end

module ActiveSupport::TaggedLogging
  def clear_tags!(*_, &_); end
  def flush; end
  def pop_tags(*_, &_); end
  def push_tags(*_, &_); end
  def tagged(*tags); end

  class << self
    def new(logger); end
  end
end

module ActiveSupport::TaggedLogging::Formatter
  def call(severity, timestamp, progname, msg); end
  def clear_tags!; end
  def current_tags; end
  def pop_tags(size = T.unsafe(nil)); end
  def push_tags(*tags); end
  def tagged(*tags); end
  def tags_text; end
end
