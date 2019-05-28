class StateMachines::Machine
  sig { params(names: T.untyped, block: T.proc.bind(StateMachines::StateContext).void).void }       
  def state(*names, &block); end 
end

class StateMachines::StateContext; end
