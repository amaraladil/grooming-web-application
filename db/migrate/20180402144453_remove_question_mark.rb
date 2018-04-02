class RemoveQuestionMark < ActiveRecord::Migration[5.1]
  def self.up
  	rename_column :tbl_bookings, :isPaid?, :isPaid
  	rename_column :tbl_inventories, :isActive?, :isActive
  end
end
