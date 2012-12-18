class AddStatusToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :addressed, :boolean, :default => false
  end
end
