Gem::Specification.new do |s|
  s.name        = 'rbis'
  s.version     = '0.0.13'
  s.summary     = 'rbi database'
  s.description = 'Database of .rbi files containing Sorbet type definitions for gems and other stdlib classes.'
  s.authors     = ['Coinbase']
  s.files       = Dir.glob('lib/**/*')
  s.executables = ['rbis']

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  unless s.respond_to?(:metadata)
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end
  s.metadata['allowed_push_host'] = ''
end
