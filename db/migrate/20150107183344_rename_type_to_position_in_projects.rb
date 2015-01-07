class RenameTypeToPositionInProjects < ActiveRecord::Migration
  def change
  	rename_column :projects, :type, :catagory
  end
end
