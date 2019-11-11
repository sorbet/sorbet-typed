# typed: true

module ActiveSupportEnumerableTest
  T.assert_type!([1,2,3].index_by(&:odd?), T::Hash[T::Boolean, Integer])
  T.assert_type!(["hello", "world", "sorbet", "here"].index_by {|s| s.length}, T::Hash[Integer, String])
end
