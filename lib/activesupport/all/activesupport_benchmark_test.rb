# typed: true

module ActiveSupportBenchmarkTest
  foo = Benchmark.ms { puts("hello world") }
  T.assert_type!(foo, Float)
end
