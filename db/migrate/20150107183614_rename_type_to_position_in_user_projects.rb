class RenameTypeToPositionInUserProjects < ActiveRecord::Migration
  def change
  	rename_column :user_projects, :type, :position
  end
end
