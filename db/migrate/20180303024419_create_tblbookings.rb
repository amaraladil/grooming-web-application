class CreateTblbookings < ActiveRecord::Migration[5.1]
  def change
    create_table :tblbookings do |t|
      t.integer :bookingID
      t.time :dateTime
      t.boolean :isPaid?
      t.integer :dogID
      t.integer :staffID
      t.integer :serviceID

      t.timestamps
    end
  end
end
