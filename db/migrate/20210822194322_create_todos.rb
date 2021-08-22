class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos, id: :uuid do |t|
      t.string 'name', null: false
      t.boolean 'done', default: false, null: false
      t.timestamps
    end
  end
end
