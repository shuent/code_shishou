class ProjectShishou < ActiveRecord::Migration[5.1]
  def change
    create_table :project_shishous do |t|
      t.references :shishou
      t.references :project, foreign_key: true
      t.timestamps
    end
    add_foreign_key :project_shishous, :users, column: :shishou_id

  end
end
