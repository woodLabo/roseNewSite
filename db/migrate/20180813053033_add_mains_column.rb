class AddMainsColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :mains, :details, :text
  end
end
