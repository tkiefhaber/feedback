class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :project_id
      t.integer :user_id
      t.string :permission_title
      t.timestamps
    end
  end
end
