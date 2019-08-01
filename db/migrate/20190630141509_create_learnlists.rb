class CreateLearnlists < ActiveRecord::Migration[5.2]
  def change
    create_table :learnlists do |t|
      t.string :title

      t.timestamps
    end
  end
end
