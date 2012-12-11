class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :project_type
      t.string :description
      t.timestamps
    end
  end
end
