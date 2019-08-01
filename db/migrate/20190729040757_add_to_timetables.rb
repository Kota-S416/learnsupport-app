class AddToTimetables < ActiveRecord::Migration[5.2]
  def change
    add_column :timetables, :place, :string
    add_column :timetables, :numofattend, :string
  end
end
