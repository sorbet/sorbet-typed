# typed: strong

module Rails
  sig {returns(Rails::Application)}
  def self.application; end
end

class Rails::Application
  sig {params(blk: T.proc.bind(Rails::Application).void).void}
  def configure(&blk); end

  sig {returns(ActionDispatch::Routing::RouteSet)}
  def routes; end
end

