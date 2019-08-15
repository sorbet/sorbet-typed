#!/usr/bin/env ruby

# Exclude gems if necessary here.
exclude = []

srb_cmd = 'tc'

srb_flags = '--error-black-list 5002'

gems = Dir.glob("lib/*").reject { |p| exclude.include?(p) }

results =
  gems.flat_map do |dir|
    versions = Dir.glob(dir + '/*').map { |f| File.basename(f) }

    # For each gem version, run the test and RBI files for that version and
    # for the "all" directory.
    versions.map do |version|
      puts "testing #{File.basename(dir)} #{version}"
      dirs = ["#{dir}/#{version}"]
      dirs << "#{dir}/all" if versions.include?('all')
      dirs = dirs.uniq.map { |d| "\"#{d}\"" }.join(' ')
      system("srb #{srb_cmd} #{srb_flags} #{dirs}")
    end
  end

# If any gem typecheck commands fail the entire CI run will fail.
exit results.compact.all?
