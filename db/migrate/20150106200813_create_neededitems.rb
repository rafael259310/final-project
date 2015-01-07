class CreateNeededitems < ActiveRecord::Migration
  def change
    create_table :neededitems do |t|
      t.integer :post_id
      t.text :info
      t.string :name

      t.timestamps
    end
  end
end
