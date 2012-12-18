class AddFinalVersionToVersions < ActiveRecord::Migration
  def change
    add_column :versions, :final_version, :boolean, :default => false
  end
end
