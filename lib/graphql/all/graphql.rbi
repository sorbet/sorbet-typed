# typed: true

module GraphQL::Schema::Member::HasFields
  def field(*args, **kwargs, &block); end
end

module GraphQL::Schema::Member::HasArguments
  def argument(*args, **kwargs, &block); end
end

class GraphQL::Schema::Object < GraphQL::Schema::Member
  extend GraphQL::Schema::Member::HasFields

  # srb rbi gems does *not* add the next line, which means arguments don't work out of the box
  # Note this isn't strictly correct. see https://github.com/sorbet/sorbet-typed/pull/166
  extend GraphQL::Schema::Member::HasArguments
end

class GraphQL::Schema::Enum < GraphQL::Schema::Member
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
  sig { params(graphql_name: T.any(String, Symbol), value: Object, description: String, deprecation_reason: String, block: T.untyped).void }
  def self.value(graphql_name, value: nil, description: nil, deprecation_reason: nil, &block); end
end
