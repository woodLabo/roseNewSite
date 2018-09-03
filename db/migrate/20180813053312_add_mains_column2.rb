class AddMainsColumn2 < ActiveRecord::Migration[5.2]
  def change
    add_column :mains, :img, :string
    add_column :mains, :comment, :text
  end
end
