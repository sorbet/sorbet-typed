# typed: true

module GraphqlTest
  class User < GraphQL::Schema::Object
  end

  class Query < GraphQL::Schema::Object
    field :user, User, "The current user", null: true do
      argument :id, ID, "The ID of the user to find", required: true
    end
  end
end
