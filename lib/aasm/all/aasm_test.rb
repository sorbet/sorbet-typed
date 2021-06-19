# typed: true

class Foo
  include AASM

  aasm do
    state :foo, initial: true
    state :bar, :baz, :quux
    after_all_transitions :foo_bar!

    event :barify do
      transitions from: %i[foo], to: :bar, guard: :guard_method
      after do
        puts 'barify'
      end
    end

    event :bazify do
      transitions from: %i[foo bar], to: :baz, guard: :guard_baz
      after do
        puts "baz"
      end
    end

    event :quuxify do
      transitions from: %i[bar baz], to: :quux, guard: :guard_method2
    end
  end
end

class Bar
  include AASM

  aasm whiny_transitions: false do
    state :foo, initial: true
  end
end
