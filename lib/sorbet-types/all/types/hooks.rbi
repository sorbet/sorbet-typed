# typed: strict

module T::Hooks
  sig { params(pass_self_here: T.untyped).void }
  def self.install(pass_self_here); end
end
