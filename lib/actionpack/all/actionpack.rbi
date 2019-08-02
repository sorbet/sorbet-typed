# typed: strong

class ActionController::Base < ActionController::Metal
end

class ActionController::Metal
  sig {returns(ActionDispatch::Request)}
  def request(); end
end

class ActionDispatch::Request
end

class ActionDispatch::Routing::RouteSet
  sig {params(blk: T.proc.bind(ActionDispatch::Routing::Mapper).void).void}
  def draw(&blk); end
end
