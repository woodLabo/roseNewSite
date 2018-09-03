class AddColumnMain < ActiveRecord::Migration[5.2]
  def change
    add_column :mains, :name, :string
    add_column :mains, :birth, :string
    add_column :mains, :from, :string
    add_column :mains, :height, :string
    add_column :mains, :blood, :string
  end
end
