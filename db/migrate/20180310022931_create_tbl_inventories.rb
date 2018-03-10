class CreateTblInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :tbl_inventories do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.boolean :isActive?

      t.timestamps
    end
  end
end
