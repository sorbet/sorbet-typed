# typed: strong

module Minitest
  class Test < Runnable
    include Minitest::Assertions
    include Minitest::Reportable
  end
end

module Minitest::Assertions
  extend T::Sig

  sig { params(test: T.untyped, msg: T.nilable(String)).returns(TrueClass) }
  def assert(test, msg = nil); end

  sig do
    params(
      exp: BasicObject,
      msg: T.nilable(String)
    ).returns(TrueClass)
  end
  def assert_empty(exp, msg = nil); end

  sig do
    params(
      exp: BasicObject,
      act: BasicObject,
      msg: T.nilable(String)
    ).returns(TrueClass)
  end
  def assert_equal(exp, act, msg = nil); end

  sig do
    params(
      collection: T::Enumerable[T.untyped],
      obj: BasicObject,
      msg: T.nilable(String)
    ).returns(TrueClass)
  end
  def assert_includes(collection, obj, msg = nil); end

  sig do
    params(
      obj: BasicObject,
      msg: T.nilable(String)
    ).returns(TrueClass)
  end
  def assert_nil(obj, msg = nil); end

  sig do
    params(
      exp: T.untyped
    ).returns(TrueClass)
  end
  def assert_raises(*exp); end

  sig { params(test: T.untyped, msg: T.nilable(String)).returns(TrueClass) }
  def refute(test, msg = nil); end

  sig do
    params(
      exp: BasicObject,
      msg: T.nilable(String)
    ).returns(TrueClass)
  end
  def refute_empty(exp, msg = nil); end

  sig do
    params(
      exp: BasicObject,
      act: BasicObject,
      msg: T.nilable(String)
    ).returns(TrueClass)
  end
  def refute_equal(exp, act, msg = nil); end

  sig do
    params(
      collection: T::Enumerable[T.untyped],
      obj: BasicObject,
      msg: T.nilable(String)
    ).returns(TrueClass)
  end
  def refute_includes(collection, obj, msg = nil); end

  sig do
    params(
      obj: BasicObject,
      msg: T.nilable(String)
    ).returns(TrueClass)
  end
  def refute_nil(obj, msg = nil); end
end
