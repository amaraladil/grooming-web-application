class CreateTblservices < ActiveRecord::Migration[5.1]
  def change
    create_table :tblservices do |t|
      t.integer :serviceID
      t.string :serviceName
      t.integer :price

      t.timestamps
    end
  end
end
