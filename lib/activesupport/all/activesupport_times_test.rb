# typed: true

module ActiveSupportTimesTest
  Time.now.midnight
  Time.now.in_time_zone.midnight
  Time.now.in_time_zone("Paris").midnight
  Time.now.in_time_zone(ActiveSupport::TimeZone["Paris"])
  Time.now.in_time_zone(nil).midnight

  Time.now.to_s.in_time_zone.midnight
  Time.now.to_s.in_time_zone("Paris").midnight
  Time.now.to_s.in_time_zone(ActiveSupport::TimeZone["Paris"]).midnight
  Time.now.to_s.in_time_zone(nil).midnight
end
