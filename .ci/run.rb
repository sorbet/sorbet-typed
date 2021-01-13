#!/usr/bin/env ruby

# Exclude gems if necessary here.
exclude = []

srb_cmd = 'tc'

srb_flags = '--error-black-list 5002'

gems = Dir.glob("lib/*").reject { |p| exclude.include?(p) }

# some gems cross-reference constants from other gems. this is typical of Rails gems.
# it's assumed that you'll never use just the one gem in isolation.
# while this should be avoided, if absolutely necessary you can define dependencies here.
# when running tests, all the values will also be required when testing the key.
# (note that this is hard to identify when tests run because error 5002 (missing const) is ignored)
deps = {
  "lib/activerecord" => ["lib/activemodel", "lib/activesupport"],
  "lib/actionpack" => ["lib/activesupport"],
  "lib/rspec-core" => ["lib/rake"],
  "lib/rubocop" => ["lib/rake"],
}

results =
  gems.flat_map do |dir|
    versions = Dir.glob(dir + '/*').map { |f| File.basename(f) }

    dirs = []
    dirs << "#{dir}/all" if versions.include?('all')
    dirs.concat(deps[dir]) if deps.key?(dir)

    # For each gem version, run the test and RBI files for that version and
    # for the "all" directory.
    versions.map do |version|
      puts "testing #{File.basename(dir)} #{version}"
      dirs_for_version = dirs + ["#{dir}/#{version}"]
      dirs_for_version = dirs_for_version.uniq.map { |d| "\"#{d}\"" }.join(' ')
      system("srb #{srb_cmd} #{srb_flags} #{dirs_for_version}")
    end
  end

# If any gem typecheck commands fail the entire CI run will fail.
exit results.compact.all?
