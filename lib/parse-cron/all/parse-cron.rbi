# typed: strict

# Parses cron expressions and computes the next occurence of the "job"
#
class CronParser
  extend T::Sig
  extend T::Generic

  SYMBOLS = T.let({}, T::Hash[String, String])

  sig { params(source: String, time_source: T.class_of(Time)).void }
  def initialize(source, time_source = Time); end

  sig { params(spec: String).returns(String) }
  def interpret_vixieisms(spec); end

  # returns the next occurence after the given date
  sig { params(now: Time, num: Integer).returns(T.any(Time, T::Array[Time]))  }
  def next(now = @time_source.now, num = 1); end

  # returns the last occurence before the given date
  sig { params(now: Time, num: Integer).returns(T.any(Time, T::Array[Time]))  }
  def last(now = @time_source.now, num=1); end

  SUBELEMENT_REGEX = T.let(%r{}, Regexp)

  sig do
    params(
      elem: String,
      allowed_range: T::Range[Integer],
    ).returns([T::Set[Integer], T::Array[Integer], String])
  end
  def parse_element(elem, allowed_range); end

  protected

  sig { params(meth: Symbol, time: Time, num: Integer).returns(T::Array[Time])  }
  def recursive_calculate(meth,time,num); end

  # returns a list of days which do both match time_spec[:dom] or time_spec[:dow]
  sig { params(year: Integer, month: Integer).returns([T::Set[Integer], T::Array[Integer]])  }
  def interpolate_weekdays(year, month); end

  sig { params(year: Integer, month: Integer).returns([T::Set[Integer], T::Array[Integer]])  }
  def interpolate_weekdays_without_cache(year, month); end

  sig { params(t: InternalTime[T.class_of(Time), Time], dir: Symbol).returns(Integer)  }
  def nudge_year(t, dir = :next); end

  sig { params(t: InternalTime[T.class_of(Time), Time], dir: Symbol).returns(Integer)  }
  def nudge_month(t, dir = :next); end

  sig { params(t: InternalTime[T.class_of(Time), Time], dir: Symbol).returns(T::Boolean)  }
  def date_valid?(t, dir = :next); end

  sig do
    params(
      t: InternalTime[T.class_of(Time), Time],
      dir: Symbol,
      can_nudge_month: T::Boolean,
    ).returns(T.nilable(Integer))
  end
  def nudge_date(t, dir = :next, can_nudge_month = true); end

  sig { params(t: InternalTime[T.class_of(Time), Time], dir: Symbol).returns(T.nilable(Integer))  }
  def nudge_hour(t, dir = :next); end

  sig { params(t: InternalTime[T.class_of(Time), Time], dir: Symbol).returns(T.nilable(Integer))  }
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

  sig { returns(Integer) }
  attr_accessor :year, :month, :day, :hour, :min

  sig { returns(T.class_of(Time)) }
  attr_accessor :time_source

  sig { params(time: Time, time_source: T.class_of(Time)).void }
  def initialize(time, time_source = Time); end

  sig { returns(Time) }
  def to_time; end

  sig { returns(String) }
  def inspect; end
end

