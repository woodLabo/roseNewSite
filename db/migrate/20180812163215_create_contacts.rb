class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :title
      t.text :details
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
