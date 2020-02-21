# typed: true

module ActiveSupportBytesTest
  T.assert_type!(2.5.exabytes, Float)
  T.assert_type!(5.exabytes, Integer)
  T.assert_type!(2.5.exabyte, Float)
  T.assert_type!(5.exabyte, Integer)
  T.assert_type!(2.5.megabytes, Float)
  T.assert_type!(5.megabytes, Integer)
  T.assert_type!(2.5.gigabytes, Float)
  T.assert_type!(5.gigabytes, Integer)
  T.assert_type!(2.5.terabytes, Float)
  T.assert_type!(5.terabytes, Integer)
end
