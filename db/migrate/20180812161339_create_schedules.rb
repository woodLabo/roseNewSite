class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.date :date
      t.string :title
      t.time :open_time
      t.time :start_time
      t.integer :adv
      t.integer :door
      t.text :appearances
      t.text :details

      t.timestamps
    end
  end
end
