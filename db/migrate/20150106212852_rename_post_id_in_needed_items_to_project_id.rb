class RenamePostIdInNeededItemsToProjectId < ActiveRecord::Migration
  def change
  	rename_column :neededitems, :post_id, :project_id
  end
end
