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

  Time.zone.now.ago(1000)
  Time.zone
  Time.zone = "Hawaii"
  Time.zone = ActiveSupport::TimeZone["Hawaii"]
  Time.zone = -5.hours
  Time.zone.now
  Time.zone.now.advance(hours: 2)
  Time.zone.now.to_a
  Time.zone.now.to_r
  Time.zone.now.to_i
  Time.zone.now.to_f
  Time.zone.now.to_date
  Time.zone.now.to_datetime
  Time.zone.now.to_time
  Time.zone.today
  Time.zone.tomorrow
  Time.zone.yesterday
  Time.zone.local(2007, 2, 1, 15, 30, 45)

  Time.zone.now.year
  Time.zone.now.mon
  Time.zone.now.month
  Time.zone.now.day
  Time.zone.now.mday
  Time.zone.now.wday
  Time.zone.now.yday
  Time.zone.now.hour
  Time.zone.now.min
  Time.zone.now.sec
  Time.zone.now.usec
  Time.zone.now.nsec
  Time.zone.now.httpdate
  Time.zone.now.rfc2822

  Time.zone.now.past?
  Time.zone.now.today?
  Time.zone.now.future?

  Time.zone.now.ago(5.hours)
  Time.zone.now.ago(1000)

  ActiveSupport::TimeZone.all
  ActiveSupport::TimeZone.us_zones
  ActiveSupport::TimeZone.country_zones(:us)
  ActiveSupport::TimeZone.country_zones('US')
end
