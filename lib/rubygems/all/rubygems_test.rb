# typed: strict

version = Gem::Version.new("2.0")
Gem::Version.correct?("2.0")

version1 = Gem::Version.create("2.0")
Gem::Version.create(version1)
Gem::Version.create(nil)

version.bump
version.eql?(version1)
version.prerelease?
version.release
version.approximate_recommendation
version < version1
version > version1
version == version1