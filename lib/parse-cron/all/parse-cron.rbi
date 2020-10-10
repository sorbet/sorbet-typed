# typed: strict

# Parses cron expressions and computes the next occurence of the "job"
#
class CronParser
  extend T::Sig
  extend T::Generic

  # NOTE: Make these variant if you use the alternate sigs for later methods.
  SourceClass = type_member(fixed: T.class_of(Time))
  Source = type_member(fixed: Time)

  SYMBOLS = T.let({}, T::Hash[String, String])

  sig { params(source: String).void }
  def initialize(source); end

  # # NOTE: This is the more complete signature of initialize:
  # sig { params(source: String, time_source: SourceClass).void }
  # def initialize(source, time_source = Time); end

  sig { params(spec: String).returns(String) }
  def interpret_vixieisms(spec); end

  # returns the next occurence after the given date
  sig { params(now: Source).returns(Source) }
  def next(now = @time_source.now); end

  # # NOTE: This is the more complete signature of next:
  # sig { params(now: Source, num: Integer).returns(T.any(Source, T::Array[Source])) }
  # def next(now = @time_source.now, num = 1); end

  # returns the last occurence before the given date
  sig { params(now: Source).returns(Source) }
  def last(now = @time_source.now); end

  # # NOTE: This is the more complete signature of last:
  # sig { params(now: Source, num: Integer).returns(T.any(Source, T::Array[Source])) }
  # def last(now = @time_source.now, num = 1); end

  SUBELEMENT_REGEX = T.let(%r{}, Regexp)

  sig do
    params(
      elem: String,
      allowed_range: T::Range[Integer],
    ).returns([T::Set[Integer], T::Array[Integer], String])
  end
  def parse_element(elem, allowed_range); end

  protected

  sig { params(meth: Symbol, time: Source, num: Integer).returns(T::Array[Source])  }
  def recursive_calculate(meth,time,num); end

  # returns a list of days which do both match time_spec[:dom] or time_spec[:dow]
  sig { params(year: Integer, month: Integer).returns([T::Set[Integer], T::Array[Integer]])  }
  def interpolate_weekdays(year, month); end

  sig { params(year: Integer, month: Integer).returns([T::Set[Integer], T::Array[Integer]])  }
  def interpolate_weekdays_without_cache(year, month); end

  sig { params(t: InternalTime[SourceClass, Source], dir: Symbol).returns(Integer)  }
  def nudge_year(t, dir = :next); end

  sig { params(t: InternalTime[SourceClass, Source], dir: Symbol).returns(Integer)  }
  def nudge_month(t, dir = :next); end

  sig { params(t: InternalTime[SourceClass, Source], dir: Symbol).returns(T::Boolean)  }
  def date_valid?(t, dir = :next); end

  sig do
    params(
      t: InternalTime[SourceClass, Source],
      dir: Symbol,
      can_nudge_month: T::Boolean,
    ).returns(T.nilable(Integer))
  end
  def nudge_date(t, dir = :next, can_nudge_month = true); end

  sig { params(t: InternalTime[SourceClass, Source], dir: Symbol).returns(T.nilable(Integer))  }
  def nudge_hour(t, dir = :next); end

  sig { params(t: InternalTime[SourceClass, Source], dir: Symbol).returns(T.nilable(Integer))  }
  def nudge_minute(t, dir = :next); end

  sig { returns(T::Hash[Symbol, [T::Set[Integer], T::Array[Integer], String]]) }
  def time_specs; end

  sig { params(str: String).returns(String)  }
  def substitute_parse_symbols(str); end

  sig { params(rng: T::Range[Integer], step: Integer).returns(T::Array[Integer])  }
  def stepped_range(rng, step = 1); end

  # returns the smallest element from allowed which is greater than current
  # returns nil if no matching value was found
  sig do
    params(
      current: Integer,
      allowed: T::Array[Integer],
      dir: Symbol,
    ).returns(T.nilable(Integer))
  end
  def find_best_next(current, allowed, dir); end

  sig { void }
  def validate_source; end
end

# internal "mutable" time representation
class CronParser::InternalTime
  extend T::Sig
  extend T::Generic

  SourceClass = type_member
  Source = type_member

  sig { returns(Integer) }
  attr_accessor :year, :month, :day, :hour, :min

  sig { returns(SourceClass) }
  attr_accessor :time_source

  sig { params(time: Source, time_source: SourceClass).void }
  def initialize(time, time_source = Time); end

  sig { returns(Source) }
  def to_time; end

  sig { returns(String) }
  def inspect; end
end

