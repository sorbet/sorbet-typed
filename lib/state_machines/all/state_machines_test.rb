# typed: strict

class SomeObject
  extend StateMachines::MacroMethods

  STATES = T.let([
    STATE_A = 'A',
    STATE_B = 'B',
    STATE_C = 'C',
  ], T::Array[String])

  state_machine(:state, initial: STATE_A) do
    before_transition(from: STATE_A, to: STATE_B, do: :do_something)
    before_transition(from: STATE_A, to: STATE_B) do |some_object, transition|
    end

    after_transition(from: STATE_A, to: STATE_B, do: :do_something)
    after_transition(from: STATE_A, to: STATE_B) do |some_object, transition|
    end

    before_transition(from: STATE_A, to: any, do: :do_something)
    before_transition(from: STATE_A, to: all, do: :do_something)
    before_transition(from: STATE_A, to: same, do: :do_something)

    around_transition do |some_object, transition, block|
      block.call
    end

    event(:advance) do
      transition(STATE_A => STATE_B)
      transition(STATE_B => STATE_C)
    end

    state(STATE_C) do
      sig { returns(T::Boolean) }
      def state_c?
        true
      end
    end
  end
end
