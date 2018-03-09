class CreateTbldogs < ActiveRecord::Migration[5.1]
  def change
    create_table :tbldogs do |t|
      t.integer :dogID
      t.string :dogName
      t.string :dogSize
      t.integer :clientID

      t.timestamps
    end
  end
end
