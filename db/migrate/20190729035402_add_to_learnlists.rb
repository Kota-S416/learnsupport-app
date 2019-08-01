class AddToLearnlists < ActiveRecord::Migration[5.2]
  def change
    add_column :learnlists, :range, :string
  end
end
