class AddItemColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :status, :string
  end
end
