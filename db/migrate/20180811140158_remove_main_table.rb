class RemoveMainTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :mains
  end
end
