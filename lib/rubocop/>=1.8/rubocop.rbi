# typed: true

class RuboCop::RakeTask < ::Rake::TaskLib
  def initialize(name = :rubocop, *args, &task_block); end
end
