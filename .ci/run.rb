exclude = ['lib/bundler/all/bundler.rbi']

file_paths = Dir.glob("**/*.rbi").select{|p| !exclude.include?(p)}.map{|p| "\"#{p}\""}.join(' ')

srb_bin = '/usr/local/bundle/bin/srb'

srb_cmd = 'tc'

srb_flags = '--error-black-list 5002'

# `exec` is used so the status code surfaces to CI
exec("#{srb_bin} #{srb_cmd} #{srb_flags} #{file_paths}")
