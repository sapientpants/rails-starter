module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :todo, TodoType, null: false do
      description "Find a todo"
      argument :id, ID, required: true
    end

    def todo(id:)
      Todo.find(id)
    end

    field :todos, [TodoType], null: false do
      description "Find all todos"
    end

    def todos
      Todo.all
    end
  end
end
