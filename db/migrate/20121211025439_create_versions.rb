class CreateVersions < ActiveRecord::Migration
  def self.up
    create_table :versions do |t|
      t.integer :version_number
      t.text :context
      t.timestamps
    end
  end

  def self.down
    drop_table :versions
  end
end
