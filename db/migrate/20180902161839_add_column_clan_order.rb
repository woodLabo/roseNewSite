class AddColumnClanOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :clans, :order, :integer
  end
end
