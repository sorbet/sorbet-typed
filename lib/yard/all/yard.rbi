# typed: true

class YARD::CodeObjects::Base
  def initialize(namespace, name, *arg2); end
end
class YARD::CodeObjects::NamespaceObject < YARD::CodeObjects::Base
end
class YARD::CodeObjects::ClassObject < YARD::CodeObjects::NamespaceObject
end
class YARD::CodeObjects::ConstantObject < YARD::CodeObjects::Base
end
class YARD::CodeObjects::Proxy
  def initialize(namespace, name, type = nil); end
end
class YARD::Handlers::Base
  def handlers; end
  def self.handlers; end
end
class YARD::Handlers::Ruby::Base < YARD::Handlers::Base
end
class YARD::Handlers::Ruby::AttributeHandler < YARD::Handlers::Ruby::Base
end
class YARD::Handlers::Ruby::MethodHandler < YARD::Handlers::Ruby::Base
end
