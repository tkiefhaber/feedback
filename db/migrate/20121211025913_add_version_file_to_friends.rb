class AddVersionFileToFriends < ActiveRecord::Migration
  def self.up
    add_attachment :versions, :version_file
  end

  def self.down
    remove_attachment :versions, :version_file
  end
end
