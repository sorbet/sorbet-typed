# typed: strong

class ActionDispatch::Routing::RouteSet
  sig {params(blk: T.proc.bind(ActionDispatch::Routing::Mapper).void).void}
  def draw(&blk); end
end
