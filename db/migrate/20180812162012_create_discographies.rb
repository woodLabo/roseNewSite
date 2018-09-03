class CreateDiscographies < ActiveRecord::Migration[5.2]
  def change
    create_table :discographies do |t|
      t.string :img
      t.string :release_number
      t.date :release_date
      t.string :title
      t.text :list
      t.string :jan
      t.integer :price
      t.text :detail

      t.timestamps
    end
  end
end
