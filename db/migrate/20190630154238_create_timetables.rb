class CreateTimetables < ActiveRecord::Migration[5.2]
  def change
    create_table :timetables do |t|
      t.string :title
      t.string :dayofweek
      t.integer :hour
      t.string :place
      t.integer :numofattend

      t.timestamps
    end
  end
end
