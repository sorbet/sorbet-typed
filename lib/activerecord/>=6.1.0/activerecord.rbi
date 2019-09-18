# New for Rails edge 6.0.
module ActiveRecord

  class QueryCanceled < QueryAborted ; end

  class StatementTimeout < QueryAborted ; end

end
