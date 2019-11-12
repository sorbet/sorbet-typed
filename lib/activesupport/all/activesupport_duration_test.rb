# typed: true

module ActiveSupportTimesTest
  T.assert_type!(1.day, ActiveSupport::Duration)
  T.assert_type!(1.day.to_i, Integer)
  T.assert_type!(1.day.to_f, Float)
  T.assert_type!(1.day.to_s, String)
end
