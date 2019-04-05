#!/usr/bin/env ruby

require 'bundler'
require 'set'

module RBIs
end

# Returns a list of .rbi files to pass to Sorbet. Looks at the gems included by
# the project at the current working directory, and uses Ruby's version
# requirements implementation to include .rbi directories matching each gem
# version.
#
# Usage: rbis [--paths]
#
# [--paths] Output a list of paths instead of individual .rbi files.
class RBIs::Finder

  def self.rbis
    # recursively get a list of *.rbi files in the paths
    paths.flat_map do |path|
      Dir.glob(File.join(path, '**/*.rbi')).select { |rbi| File.file?(rbi) }
    end
  end

  def self.paths
    # get a list of gems for the current project
    gemspecs = Bundler.load.specs.sort_by(&:name)

    # get the Ruby stdlib paths
    paths = ruby_paths

    # append the paths for each gem
    gemspecs.each { |gemspec| paths += gem_paths(gemspec) }

    # clean up any '..' in the paths
    paths.map { |path| Pathname.new(path).cleanpath }.uniq
  end

  private

  # list of directories whose names satisfy the given Gem::Version (+ 'all/')
  def self.matching_version_directories(root, version)
    paths = Dir.glob(File.join(root, '*')).select do |dir|
      next false unless File.directory?(dir)
      basename = File.basename(dir)
      requirements = basename.split(/[,&-]/) # split using ',', '-', or '&'
      requirements.all? do |requirement|
        Gem::Requirement::PATTERN =~ requirement &&
          Gem::Requirement.create(requirement).satisfied_by?(version)
      end
    end
    all_dir = File.join(root, 'all')
    paths << all_dir if Dir.exist?(all_dir)
    paths
  end

  # list of directories in lib/ruby whose names satisfy the current RUBY_VERSION
  def self.ruby_paths
    ruby_version = Gem::Version.create(RUBY_VERSION)
    ruby_dir = File.join(__dir__, '..', 'ruby')
    matching_version_directories(ruby_dir, ruby_version)
  end

  # list of directories in lib/gemspec.name whose names satisfy gemspec.version
  def self.gem_paths(gemspec)
    paths = []

    # first check for rbi/rbis directory in the gem itself
    %w[rbi rbis].each do |dir|
      gem_rbi = File.join(gemspec.full_gem_path, dir)
      paths << gem_rbi if Dir.exist?(gem_rbi)
    end

    # next check for signatures matching versions in this gem
    local_dir = File.join(__dir__, '..', gemspec.name)
    paths += matching_version_directories(local_dir, gemspec.version)

    # finally search for a directory matching the git ref in this gem
    if gemspec.source.is_a?(Bundler::Source::Git)
      ref = gemspec.source.ref
      [ref, ref[0...7]].uniq.each do |r|
        ref_dir = File.join(__dir__, '..', gemspec.name, r)
        paths << ref_dir if Dir.exist?(ref_dir)
      end
    end

    paths
  end
end
