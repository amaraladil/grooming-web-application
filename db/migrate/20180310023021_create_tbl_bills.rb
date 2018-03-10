class CreateTblBills < ActiveRecord::Migration[5.1]
  def change
    create_table :tbl_bills do |t|
      t.references :tbl_bookings, foreign_key: true

      t.timestamps
    end
  end
end
