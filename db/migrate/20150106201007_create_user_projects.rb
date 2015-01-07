class CreateUserProjects < ActiveRecord::Migration
  def change
    create_table :user_projects do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :type

      t.timestamps
    end
  end
end
