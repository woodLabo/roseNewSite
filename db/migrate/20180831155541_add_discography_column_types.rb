class AddDiscographyColumnTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :discographies, :types, :string
  end
end
