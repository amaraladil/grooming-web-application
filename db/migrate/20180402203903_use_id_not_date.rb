class UseIdNotDate < ActiveRecord::Migration[5.1]
  def change
  	add_reference :tbl_bookings, :tbl_schedules, index: true
  	add_foreign_key :tbl_bookings, :tbl_schedules, column: :tbl_schedules_id
  end
end
