class AddScheduleColumnReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :reservation, :string
  end
end
