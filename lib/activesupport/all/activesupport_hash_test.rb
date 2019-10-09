# typed: true

module ActiveSupportHashTest
  # this is our initial value
  h1 = {a: "1", b: "2"}
  # as far as Sorbet knows, it starts life as a Shape
  T.assert_type!(h1, {a: String, b: String})

  # this is another initial value
  h2 = {"a" => 1, "b" => 2}
  # as far as Sorbet knows, it starts life as a Shape
  T.assert_type!(h2, {"a" => Integer, "b" => Integer})

  # in an ideal world, `h1.stringify_keys` would return something like:
  # - { "a" => String, "b" => String }
  # - T::Hash[String, String]
  # and `h2.stringify_keys` would return one of:
  # - { "a" => Integer, "b" => Integer }
  # - T::Hash[String, Integer]
  # if you find a way to have Sorbet generically do this, please improve this!
  T.assert_type!(h1.stringify_keys, T::Hash[String, T.untyped])
  T.assert_type!(h2.stringify_keys, T::Hash[String, T.untyped])
  T.assert_type!(h1.symbolize_keys, T::Hash[Symbol, T.untyped])
  T.assert_type!(h2.symbolize_keys, T::Hash[Symbol, T.untyped])

  # these tests just confirm that methods are defined
  h1.symbolize_keys!
  h1.stringify_keys!
  h1.deep_stringify_keys
  h1.deep_stringify_keys!
  h1.deep_symbolize_keys
  h1.deep_symbolize_keys!
  h1.deep_transform_keys { |k| k.to_s.upcase }
  h1.deep_transform_keys! { |k| k.to_s.upcase }
  h1.to_options
end
