# typed: strong

module Configs
  sig { params(name: T.any(String, Symbol)).returns(ActiveSupport::HashWithIndifferentAccess) }
  def self.[](name); end
end
