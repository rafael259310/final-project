class RenameClassInProjectsToType < ActiveRecord::Migration
  def change
  	rename_column :projects, :class, :type
  end
end
