# typed: true

module DelayedJobTest
  class A
    extend T::Sig

    sig { void }
    def foo
      # do something
    end

    sig { params(baz: Integer).void }
    def bar(baz)
      # do something else
    end

    sig { params(n: Integer).void }
    def self.foobar(n = 1)
    end
  end

  # confirm the sigs work fine without delay
  A.new.foo
  A.new.bar(1)
  A.foobar
  A.foobar(1)

  # the real tests
  A.new.delay.foo
  A.new.delay(priority: 1).bar(1)
  A.delay(priority: 1).foobar
  A.delay.foobar(1)
end
