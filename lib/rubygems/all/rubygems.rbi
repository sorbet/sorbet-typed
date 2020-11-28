# typed: strict

class Gem::Version
  sig { params(version: String).void }
  def initialize(version); end

  sig { params(version: String).returns(T::Boolean) }
  def self.correct?(version); end

  sig { params(input: T.nilable(T.any(String, Gem::Version))).returns(T.nilable(Gem::Version)) }
  def self.create(input); end

  sig { returns(Gem::Version) }
  def bump; end

  sig { params(other: Gem::Version).returns(T::Boolean) }
  def eql?(other); end

  sig { returns(T::Boolean) }
  def prerelease?; end

  sig { returns(Gem::Version) }
  def release; end

  sig { returns(String) }
  def approximate_recommendation; end

  sig { params(other: Gem::Version).returns(T::Boolean) }
  def <=>(other); end
end