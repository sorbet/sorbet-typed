# typed: true

module ActiveSupportTimesTest
  Time.now.midnight
  Time.now.in_time_zone.midnight
  Time.now.in_time_zone("Paris").midnight
end
