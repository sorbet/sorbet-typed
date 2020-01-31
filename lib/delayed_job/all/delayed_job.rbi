# typed: strong

module Delayed::MessageSending
  extend T::Sig

  sig { params(options: T.nilable(T::Hash[Symbol, T.untyped])).returns(T.self_type) }
  def delay(options = nil); end
end

class Object
  include Delayed::MessageSending
end
