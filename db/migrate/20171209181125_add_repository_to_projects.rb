class AddRepositoryToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :repository, :string, null: false, default:''
  end
end
