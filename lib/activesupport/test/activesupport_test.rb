# typed: true

module ActiveSupportNumberHelperTest
  extend ActiveSupport::NumberHelper

  number_to_currency(1234567890.50)
  number_to_currency(1234567890.506, precision: 3)
  number_to_currency(1234567890.506, locale: :fr)
  number_to_currency(-1234567890.50, negative_format: '(%u%n)')
  number_to_currency(1234567890.50, unit: '&pound;', separator: ',', delimiter: '', format: '%n %u')

  number_to_delimited(12345678)
  number_to_delimited('123456')
  number_to_delimited(12345678.05)
  number_to_delimited(12345678.05, separator: ' ')
  number_to_delimited(12345678.05, locale: :fr)
  number_to_delimited('112a')
  number_to_delimited(98765432.98, delimiter: ' ', separator: ',')
  number_to_delimited("123456.78", delimiter_pattern: /(\d+?)(?=(\d\d)+(\d)(?!\d))/)

  number_to_human(123)
  number_to_human(1234567890123456789)
  number_to_human(1234567, precision: 4, significant: false)
  number_to_human(1234567, precision: 1, separator: ',', significant: false)
  number_to_human(543934, units: :distance)
  number_to_human(343, units: :distance, precision: 1)
  number_to_human(0.34, units: :distance)

  number_to_human_size(123)
  number_to_human_size(1234567, precision: 2)
  number_to_human_size(1234567, precision: 2, separator: ',')

  number_to_percentage(100)
  number_to_percentage('98')
  number_to_percentage(100, precision: 0)
  number_to_percentage(1000, delimiter: '.', separator: ',')
  number_to_percentage(302.24398923423, precision: 5)
  number_to_percentage(1000, locale: :fr)
  number_to_percentage(1000, precision: nil)
  number_to_percentage('98a')
  number_to_percentage(100, format: '%n  %')

  number_to_phone(5551234) 
  number_to_phone('5551234')
  number_to_phone(1235551234, area_code: true, extension: 555)
  number_to_phone(1235551234, country_code: 1, extension: 1343, delimiter: '.')
  number_to_phone(75561234567, pattern: /(\d{1,4})(\d{4})(\d{4})$/, area_code: true)

  number_to_rounded(111.2345)
  number_to_rounded(111.2345, precision: 2)
  number_to_rounded(111.2345, precision: 1, significant: true)
  number_to_rounded(13, precision: 5, significant: true)
  number_to_rounded(13, precision: nil)
  number_to_rounded(111.234, locale: :fr)
  number_to_rounded(13, precision: 5, significant: true, strip_insignificant_zeros: true)
  number_to_rounded(1111.2345, precision: 2, separator: ',', delimiter: '.')
end
