# typed: strict

module ParseCronTest
  extend T::Sig

  # Basic usage
  reference_time = Time.now
  cron = CronParser.new('* * * * *')

  result_time = T.let(Time.now, Time)
  result_time = cron.next
  result_time = cron.next(reference_time)
  result_time = cron.last
  result_time = cron.last(reference_time)

  # Custom Time class
  ExtendedTime = Class.new(Time)
  result_time = CronParser.new("* * * * *", ExtendedTime).next
end
