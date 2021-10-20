# typed: strict

module Rails
  class << self
    sig { returns(ActiveSupport::EnvironmentInquirer) }
    def env; end
  end
end
