module Types
  class TodoType < Types::BaseObject
    description "A todo type"
    field :id, ID, null: false
    field :name, String, null: false
    field :done, Boolean, null: true
  end
end