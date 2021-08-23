# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_todo, TodoType, null: false do
      description 'Create a todo'
      argument :name, String, required: true
      argument :done, Boolean, required: false
    end

    def create_todo(name:, done: false)
      Todo.create(name: name, done: done)
    end
  end
end
