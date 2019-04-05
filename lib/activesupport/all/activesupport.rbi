module ActiveSupport
  sig {params(kind: Symbol, blk: T.proc.bind(T.class_of(ActionController::Base)).void).void}
  def self.on_load(kind, &blk); end
end
