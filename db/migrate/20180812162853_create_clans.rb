class CreateClans < ActiveRecord::Migration[5.2]
  def change
    create_table :clans do |t|
      t.string :img
      t.string :name
      t.string :part
      t.string :affiliation

      t.timestamps
    end
  end
end
