class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.text :title, null: false
      t.text :body, null: false
      t.references :owner, index: true
      t.timestamps
    end
    add_foreign_key :projects, :users, column: :owner_id
  end
end
