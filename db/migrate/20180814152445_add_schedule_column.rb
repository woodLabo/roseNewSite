class AddScheduleColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :types, :integer
  end
end
