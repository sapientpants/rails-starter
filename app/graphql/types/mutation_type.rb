module Types
  class MutationType < Types::BaseObject
    field :createTodo, TodoType, null: false do
      description "Create a todo"
      argument :name, String, required: true
      argument :done, Boolean, required: false
    end

    def createTodo(name:, done: false)
      Todo.create(name: name, done: done)
    end
  end
end
