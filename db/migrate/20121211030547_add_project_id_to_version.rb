class AddProjectIdToVersion < ActiveRecord::Migration
  def self.up
    add_column :versions, :project_id, :integer
  end

  def self.down
    remove_column :versions, :project_id
  end
end
