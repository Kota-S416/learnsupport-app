class AddNameToTrees < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :dayoftask, :string
    add_column :tasks, :comment, :string
  end
end
