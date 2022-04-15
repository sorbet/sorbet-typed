# typed: strong

module GraphQL
  class << self
    sig { params(graphql_string: String, tracer: T.untyped).returns(GraphQL::Language::Nodes::Document) }
    def parse(graphql_string, tracer: T.unsafe(nil)); end
  end
end

class GraphQL::Backtrace
  include(::Enumerable)
  extend(::Forwardable)
  Elem = type_member {{fixed: T.untyped}}
end

class GraphQL::Schema
  class << self
    sig { params(query_str: String, kwargs: T.untyped).returns(T::Hash[String, T.untyped]) }
    def execute(query_str = T.unsafe(nil), **kwargs); end
  end
end

class GraphQL::Schema::Enum < ::GraphQL::Schema::Member
  class << self
    # Define a value for this enum
    #
    # _@param_ `graphql_name` - the GraphQL value for this, usually `SCREAMING_CASE`
    #
    # _@param_ `description` - the GraphQL description for this value, present in documentation
    #
    # _@param_ `value` - , the translated Ruby value for this object (defaults to `graphql_name`)
    #
    # _@param_ `deprecation_reason` - if this object is deprecated, include a message here
    #
    # _@see_ `{Schema::EnumValue}` — which handles these inputs by default
    sig { params(graphql_name: T.any(String, Symbol), positional_description: String,  value: Object, description: String, deprecation_reason: String, block: T.untyped).void }
    def value(graphql_name, positional_description = '', value: nil, description: nil, deprecation_reason: nil, &block); end

    sig { returns(T::Hash[String, GraphQL::Schema::EnumValue]) }
    def values; end
  end
end

class GraphQL::Schema::InputObject < ::GraphQL::Schema::Member
  sig { returns(GraphQL::Query::Context) }
  def context; end
end

class GraphQL::Schema::Object < ::GraphQL::Schema::Member
  extend(::GraphQL::Schema::Member::HasFields)

  sig { returns(GraphQL::Query::Context) }
  def context; end
end

class GraphQL::Schema::Resolver
  extend(::GraphQL::Schema::Member::BaseDSLMethods)

  sig { returns(GraphQL::Query::Context) }
  def context; end
end

class GraphQL::Schema::Member
  extend(::GraphQL::Schema::Member::BaseDSLMethods)
end

module GraphQL::Schema::Member::HasFields
  sig do
    params(
      args: T.untyped,
      kwargs: T.untyped,
      block: T.nilable(T.proc.bind(GraphQL::Schema::Field).void)
    ).returns(T.untyped)
  end
  def field(*args, **kwargs, &block); end
end

module GraphQL::Schema::Member::HasArguments
  def argument(*args, **kwargs, &block); end
end

module GraphQL::Schema::Member::HasFields
  def field_class(new_field_class = nil); end
end

module GraphQL::Schema::Member::BaseDSLMethods
  sig { params(new_description: String).returns(T.nilable(String)) }
  def description(new_description = T.unsafe(nil)); end
end

module GraphQL::Schema::Interface
  mixes_in_class_methods(::GraphQL::Schema::Member::BaseDSLMethods)
  mixes_in_class_methods(::GraphQL::Schema::Member::HasFields)
end

class GraphQL::Schema::Mutation < ::GraphQL::Schema::Resolver
  extend(::GraphQL::Schema::Member::HasFields)
end

class GraphQL::Schema::Subscription < ::GraphQL::Schema::Resolver
  extend(::GraphQL::Schema::Member::HasFields)
end
