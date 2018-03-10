class CreateTblServices < ActiveRecord::Migration[5.1]
  def change
    create_table :tbl_services do |t|
      t.string :serviceName
      t.decimal :price
      t.boolean :isActive

      t.timestamps
    end
  end
end
