class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string, unique: true, null: false, default: ""
    add_index :users, :name, unique: true
  end
end
