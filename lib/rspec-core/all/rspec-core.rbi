# typed: true

module RSpec::Core::ShellEscape
  def conditionally_quote(id); end
  def escape(shell_command); end
  def quote(argument); end
  def self.conditionally_quote(id); end
  def self.escape(shell_command); end
  def self.quote(argument); end
  def self.shell_allows_unquoted_ids?; end
  def shell_allows_unquoted_ids?; end
end
class RSpec::Core::RakeTask < ::Rake::TaskLib
  include ::Rake::DSL
  include RSpec::Core::ShellEscape
  def initialize(*args, &task_block); end
end
