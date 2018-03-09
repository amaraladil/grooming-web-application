class CreateTblinventories < ActiveRecord::Migration[5.1]
  def change
    create_table :tblinventories do |t|
      t.integer :inventoryID
      t.string :name
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
