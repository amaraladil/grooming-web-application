class CreateTblBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :tbl_bookings do |t|
      t.time :dateTime
      t.boolean :isPaid?
      t.references :tbl_users, foreign_key: true
      t.references :tbl_dogs, foreign_key: true

      t.timestamps
    end
  end
end
