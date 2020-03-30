# typed: strong

module Pundit
  sig { void }
  def skip_authorization; end

  sig { void }
  def skip_policy_scope; end
end
