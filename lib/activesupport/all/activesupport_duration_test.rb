# typed: true

module ActiveSupportDurationTest
  T.assert_type!(1.day, ActiveSupport::Duration)
  T.assert_type!(1.day.to_i, Integer)
  T.assert_type!(1.day.to_f, Float)
  T.assert_type!(1.day.to_s, String)
  T.assert_type!(2.days, ActiveSupport::Duration)
  T.assert_type!(2.5.days, ActiveSupport::Duration)

  T.assert_type!(1.second, ActiveSupport::Duration)
  T.assert_type!(2.seconds, ActiveSupport::Duration)
  T.assert_type!(42.5.seconds, ActiveSupport::Duration)

  T.assert_type!(1.minute, ActiveSupport::Duration)
  T.assert_type!(2.minutes, ActiveSupport::Duration)
  T.assert_type!(2.2.minutes, ActiveSupport::Duration)

  T.assert_type!(1.hour, ActiveSupport::Duration)
  T.assert_type!(2.hours, ActiveSupport::Duration)
  T.assert_type!(2.3.hours, ActiveSupport::Duration)

  T.assert_type!(1.week, ActiveSupport::Duration)
  T.assert_type!(2.weeks, ActiveSupport::Duration)
  T.assert_type!(2.4.weeks, ActiveSupport::Duration)

  T.assert_type!(1.fortnight, ActiveSupport::Duration)
  T.assert_type!(2.fortnights, ActiveSupport::Duration)
  T.assert_type!(2.5.fortnights, ActiveSupport::Duration)

  T.assert_type!(1.month, ActiveSupport::Duration)
  T.assert_type!(2.months, ActiveSupport::Duration)

  T.assert_type!(1.year, ActiveSupport::Duration)
  T.assert_type!(2.years, ActiveSupport::Duration)

  T.assert_type!(ActiveSupport::Duration.build(123456), ActiveSupport::Duration)

  # For example, "P3Y6M4DT12H30M5S" represents a duration of "three years, six
  # months, four days, twelve hours, thirty minutes, and five seconds".
  T.assert_type!(ActiveSupport::Duration.parse("P3Y6M4DT12H30M5S"), ActiveSupport::Duration)

  T.assert_type!(2.years.eql?(123), T::Boolean)
  T.assert_type!(2.years.eql?(1.year), T::Boolean)
  T.assert_type!(2.years == 123, T::Boolean)
  T.assert_type!(2.years == 1.year, T::Boolean)
  # It'll accept anything.
  T.assert_type!(2.years.eql?('foo'), T::Boolean)
  T.assert_type!(2.years == 'foo', T::Boolean)

  T.assert_type!(2.years <=> 2.months, Integer)
  T.assert_type!(2.years <=> 1776, Integer)

  T.assert_type!(2.years + 1776, ActiveSupport::Duration)
  T.assert_type!(3.years - 1776, ActiveSupport::Duration)
  T.assert_type!(2.years + 1776.days, ActiveSupport::Duration)
  T.assert_type!(3.years - 1776.days, ActiveSupport::Duration)

  # Multiplication and division operators only allow numerics.
  T.assert_type!(3.years * 5, ActiveSupport::Duration)
  T.assert_type!(3.years / 5, ActiveSupport::Duration)

  T.assert_type!(3.years % 5, ActiveSupport::Duration)
  T.assert_type!(3.years % 5.days, ActiveSupport::Duration)

  T.assert_type!(Date.today - 4.weeks, Date)
end
