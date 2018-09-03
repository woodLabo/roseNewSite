class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :title
      t.integer :price
      t.string :img

      t.timestamps
    end
  end
end
