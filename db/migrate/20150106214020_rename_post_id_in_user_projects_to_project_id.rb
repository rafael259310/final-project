class RenamePostIdInUserProjectsToProjectId < ActiveRecord::Migration
  def change
  	rename_column :user_projects, :post_id, :project_id
  end
end
