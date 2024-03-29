# typed: true

class Money
  include ::Comparable
  include ::Money::Arithmetic
  extend ::Money::Constructors

  def initialize(obj, currency = T.unsafe(nil), options = T.unsafe(nil)); end

  def allocate(parts); end

  sig { returns(BigDecimal) }
  def amount; end

  def as_ca_dollar; end
  def as_euro; end
  def as_us_dollar; end
  def bank; end

  sig { returns(T.any(BigDecimal, Integer)) }
  def cents; end

  sig { returns(Money::Currency) }
  def currency; end

  sig { returns(String) }
  def currency_as_string; end

  def currency_as_string=(val); end
  def decimal_mark; end
  def dollars; end
  def dup_with(options = T.unsafe(nil)); end

  sig do
    params(
      other_currency: T.any(Money::Currency, String, Symbol),
      rounding_method: T.nilable(T.proc.void),
    )
    .returns(Money)
  end
  def exchange_to(other_currency, &rounding_method); end

  sig do
    params(
      rules: T::Hash[T.untyped, T.untyped],
    )
    .returns(String)
  end
  def format(*rules); end

  sig { returns(T.any(BigDecimal, Integer)) }
  def fractional; end

  def hash; end
  def inspect; end
  def round(rounding_mode = T.unsafe(nil), rounding_precision = T.unsafe(nil)); end

  sig { returns(T.any(BigDecimal, Integer)) }
  def round_to_nearest_cash_value; end

  def split(parts); end
  def symbol; end
  def thousands_separator; end

  sig { returns(BigDecimal) }
  def to_d; end

  sig { returns(Float) }
  def to_f; end

  sig { returns(Integer) }
  def to_i; end

  sig do
    params(
      given_currency: T.nilable(T.any(Money::Currency, String, Symbol))
    )
    .returns(Money)
  end
  def to_money(given_currency = T.unsafe(nil)); end

  sig { returns(String) }
  def to_s; end

  sig do
    params(
      new_currency: T.any(Money::Currency, String, Symbol)
    )
    .returns(Money)
  end
  def with_currency(new_currency); end

  private

  def as_d(num); end
  def locale_backend; end

  sig do
    params(
      value: BigDecimal,
    )
    .returns(T.any(BigDecimal, Integer))
  end
  def return_value(value); end

  class << self
    def add_rate(from_currency, to_currency, rate); end
    def conversion_precision; end
    def conversion_precision=(_arg0); end
    def default_bank; end
    def default_bank=(_arg0); end
    def default_currency; end
    def default_currency=(currency); end
    def default_formatting_rules; end
    def default_formatting_rules=(_arg0); end
    def default_infinite_precision; end
    def default_infinite_precision=(_arg0); end
    def disallow_currency_conversion!; end
    def from_amount(amount, currency = T.unsafe(nil), options = T.unsafe(nil)); end
    def from_cents(*_arg0); end
    def infinite_precision; end
    def infinite_precision=(value); end
    def inherited(base); end
    def locale_backend; end
    def locale_backend=(value); end
    def rounding_mode(mode = T.unsafe(nil)); end
    def rounding_mode=(new_rounding_mode); end
    def setup_defaults; end
    def use_i18n; end
    def use_i18n=(value); end
    def with_rounding_mode(mode); end
  end
end

class Money::Allocation
  class << self
    def generate(amount, parts, whole_amounts = T.unsafe(nil)); end
  end
end

module Money::Arithmetic
  def %(val); end
  def *(value); end
  def +(other); end
  def -(other); end
  def -@; end
  def /(value); end
  def <=>(other); end
  def ==(other); end
  def abs; end
  def coerce(other); end
  def div(value); end
  def divmod(val); end
  def eql?(other_money); end
  def modulo(val); end
  def negative?; end
  def nonzero?; end
  def positive?; end
  def remainder(val); end
  def zero?; end

  private

  def divmod_money(val); end
  def divmod_other(val); end
end

class Money::Arithmetic::CoercedNumeric < ::Struct
  def value; end
  def value=(_); end
  def zero?; end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

module Money::Bank; end

class Money::Bank::Base
  def initialize(&block); end

  def exchange_with(from, to_currency, &block); end
  def rounding_method; end
  def same_currency?(currency1, currency2); end
  def setup; end

  class << self
    def instance; end
  end
end

class Money::Bank::DifferentCurrencyError < ::Money::Bank::Error; end
class Money::Bank::Error < ::StandardError; end

class Money::Bank::SingleCurrency < ::Money::Bank::Base
  def exchange_with(from, to_currency, &block); end
end

class Money::Bank::UnknownRate < ::Money::Bank::Error; end
class Money::Bank::UnknownRateFormat < ::StandardError; end

class Money::Bank::VariableExchange < ::Money::Bank::Base
  def initialize(st = T.unsafe(nil), &block); end

  def add_rate(from, to, rate); end
  def calculate_fractional(from, to_currency); end
  def exchange(fractional, rate, &block); end
  def exchange_with(from, to_currency, &block); end
  def export_rates(format, file = T.unsafe(nil), opts = T.unsafe(nil)); end
  def get_rate(from, to, opts = T.unsafe(nil)); end
  def import_rates(format, s, opts = T.unsafe(nil)); end
  def marshal_dump; end
  def marshal_load(arr); end
  def mutex; end
  def rates; end
  def set_rate(from, to, rate, opts = T.unsafe(nil)); end
  def store; end
end

Money::Bank::VariableExchange::FORMAT_SERIALIZERS = T.let(T.unsafe(nil), Hash)
Money::Bank::VariableExchange::RATE_FORMATS = T.let(T.unsafe(nil), Array)
Money::Bank::VariableExchange::SERIALIZER_SEPARATOR = T.let(T.unsafe(nil), String)

module Money::Constructors
  def ca_dollar(cents); end
  def cad(cents); end
  def empty(currency = T.unsafe(nil)); end
  def eur(cents); end
  def euro(cents); end
  def gbp(pence); end
  def pound_sterling(pence); end
  def us_dollar(cents); end
  def usd(cents); end
  def zero(currency = T.unsafe(nil)); end
end

class Money::Currency
  include ::Comparable
  extend ::Enumerable
  extend ::Money::Currency::Heuristics

  def initialize(id); end

  def <=>(other_currency); end
  def ==(other_currency); end
  def code; end
  def decimal_mark; end
  def decimal_places; end
  def delimiter; end
  def disambiguate_symbol; end
  def eql?(_arg0); end
  def exponent; end
  def format; end
  def hash; end
  def html_entity; end
  def id; end
  def inspect; end
  def iso?; end
  def iso_code; end
  def iso_numeric; end
  def name; end
  def priority; end
  def separator; end
  def smallest_denomination; end
  def subunit; end
  def subunit_to_unit; end
  def symbol; end
  def symbol_first; end
  def symbol_first?; end
  def thousands_separator; end
  def to_currency; end
  def to_s; end
  def to_str; end
  def to_sym; end

  private

  def compare_ids(other_currency); end
  def initialize_data!; end

  class << self
    def _instances; end
    def all; end
    def each; end
    def find(id); end
    def find_by_iso_numeric(num); end
    def inherit(parent_iso_code, curr); end
    def new(id); end
    def register(curr); end
    def reset!; end
    def stringified_keys; end
    def table; end
    def unregister(curr); end
    def wrap(object); end

    private

    def stringify_keys; end
  end
end

module Money::Currency::Heuristics
  def analyze(str); end
end

module Money::Currency::Loader
  class << self
    def load_currencies; end

    private

    def parse_currency_file(filename); end
  end
end

Money::Currency::Loader::DATA_PATH = T.let(T.unsafe(nil), String)

class Money::Currency::MissingAttributeError < ::StandardError
  def initialize(method, currency, attribute); end
end

class Money::Currency::UnknownCurrency < ::ArgumentError; end

class Money::Formatter
  def initialize(money, *rules); end

  def decimal_mark; end
  def delimiter; end
  def separator; end
  def thousands_separator; end
  def to_s; end

  private

  def append_currency_symbol(formatted_number); end
  def append_sign(formatted_number); end
  def currency; end
  def extract_whole_and_decimal_parts; end
  def format_decimal_part(value); end
  def format_number; end
  def format_whole_part(value); end
  def free_text; end
  def html_wrap(string, class_name); end
  def lookup(key); end
  def money; end
  def rules; end
  def show_free_text?; end
  def symbol_value_from(rules); end
end

Money::Formatter::DEFAULTS = T.let(T.unsafe(nil), Hash)

class Money::FormattingRules
  def initialize(currency, *raw_rules); end

  def [](key); end
  def has_key?(key); end

  private

  def currency; end
  def default_formatting_rules; end
  def delimiter_pattern_rule(rules); end
  def determine_format_from_formatting_rules(rules); end
  def localize_formatting_rules(rules); end
  def normalize_formatting_rules(rules); end
  def symbol_position_from(rules); end
  def translate_formatting_rules(rules); end
  def warn_about_deprecated_rules(rules); end
end

module Money::LocaleBackend
  class << self
    def find(name); end
  end
end

Money::LocaleBackend::BACKENDS = T.let(T.unsafe(nil), Hash)
class Money::LocaleBackend::Base; end

class Money::LocaleBackend::Currency < ::Money::LocaleBackend::Base
  def lookup(key, currency); end
end

class Money::LocaleBackend::I18n < ::Money::LocaleBackend::Base
  def initialize; end

  def lookup(key, _); end
end

Money::LocaleBackend::I18n::KEY_MAP = T.let(T.unsafe(nil), Hash)

class Money::LocaleBackend::Legacy < ::Money::LocaleBackend::Base
  def initialize; end

  def lookup(key, currency); end

  private

  def i18n_backend; end
end

class Money::LocaleBackend::NotSupported < ::StandardError; end
class Money::LocaleBackend::Unknown < ::ArgumentError; end
module Money::RatesStore; end

class Money::RatesStore::Memory
  def initialize(opts = T.unsafe(nil), rates = T.unsafe(nil)); end

  def add_rate(currency_iso_from, currency_iso_to, rate); end
  def each_rate(&block); end
  def get_rate(currency_iso_from, currency_iso_to); end
  def marshal_dump; end
  def transaction(&block); end

  private

  def guard; end
  def options; end
  def rate_key_for(currency_iso_from, currency_iso_to); end
  def rates; end
end

Money::RatesStore::Memory::INDEX_KEY_SEPARATOR = T.let(T.unsafe(nil), String)
class Money::UndefinedSmallestDenomination < ::StandardError; end
