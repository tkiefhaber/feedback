class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :content
      t.integer :version_id
      t.timestamps
    end
  end
end
