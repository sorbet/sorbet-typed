# typed: true

module GraphqlTest
  class User < GraphQL::Schema::Object
  end

  class Query < GraphQL::Schema::Object
    field :user, User, "The current user", null: true do
      argument :id, ID, "The ID of the user to find", required: true
    end
  end

  class CardinalDirectionType < GraphQL::Schema::Enum
    value "NORTH", value: 'north'
    value "EAST", value: 'east', description: "Lorem ipsum"
    value "SOUTH", value: 'south', deprecation_reason: "We just don't like south that much."
    value "WEST", value: 'west'
    value "THE_SECRET_DIRECTION" # no value
  end
end
