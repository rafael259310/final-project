class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :name
      t.integer :budget
      t.string :class

      t.timestamps
    end
  end
end
