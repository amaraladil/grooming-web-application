class ChangeBookingAndService < ActiveRecord::Migration[5.1]
  def change
  	change_column :tbl_bookings, :dateTime, :dateTime
  	add_reference :tbl_bookings, :tbl_services, foreign_key: true
  end
end
