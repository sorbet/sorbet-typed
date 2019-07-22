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

  sig { params(position: T.any(Integer, String, Regexp)).returns(T.nilable(String)) }
  def at(position); end

  sig { returns(T::Boolean) }
  def blank?; end

  sig { params(first_letter: Symbol).returns(String) }
  def camelize(first_letter = nil); end

  alias_method :camelcase, :camelize

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
  
  alias_method :ends_with?, :end_with?

  sig { params(string: String).returns(T::Boolean) }
  def exclude?(string); end

  sig { params(limit: T.nilable(Integer)).returns(String) }
  def first(limit = nil); end

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

  sig { returns(T.nilable(String)) }
  def safe_constantize; end

  sig { params(locale: Symbol).returns(T.nilable(String)) }
  def singularize(locale = :en); end

  sig { returns(T.untyped) }
  def squish!; end

  sig { returns(String) }
  def squish; end

  alias_method :starts_with?, :start_with?

  sig { returns(String) }
  def strip_heredoc; end

  sig { returns(String) }
  def tableize; end

  alias_method :titlecase, :titleize

  sig { params(keep_id_suffix: T::Boolean).returns(String) }
  def titleize(keep_id_suffix: false); end

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

  sig { params(value: T.untyped).returns(T::Array[T.untyped]) }
  def split(value = nil); end

  sig { returns(Elem) }
  def third; end

  sig { returns(Elem) }
  def third_to_last; end

  sig { params(position: Integer).returns(T::Array[T.untyped]) }
  def to(position); end

  alias_method :to_default_s, :to_s

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
      locale: T.untyped
    ).returns(T.untyped)
  end
  def to_sentence(words_connector: ", ", two_words_connector: " and ", last_word_connector: ", and ", locale: nil); end

  sig { params(options: T.untyped).returns(T.untyped) }
  def to_xml(options = nil); end

  sig { params(elements: T.untyped).returns(T.untyped) }
  def without(*elements); end
end
