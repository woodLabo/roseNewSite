class AddColumnContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :date, :string
    add_column :contacts, :count, :string
  end
end
