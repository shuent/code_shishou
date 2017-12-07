class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.string :body
      t.references :user
      t.references :project

      t.timestamps
    end
  end
end
