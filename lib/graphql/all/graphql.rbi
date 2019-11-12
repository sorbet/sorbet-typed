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
  extend GraphQL::Schema::Member::HasArguments
end
