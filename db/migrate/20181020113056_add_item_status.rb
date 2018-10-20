class AddItemStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :discographies, :status, :string
  end
end
