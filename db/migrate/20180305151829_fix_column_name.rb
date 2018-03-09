class FixColumnName < ActiveRecord::Migration[5.1]
  def change
  	   change_table :tblbookings do |t|
      t.rename :bookingID, :tblbooking_id
      t.rename :dogID, :tbldog_id
      t.rename :staffID, :tblstaff_id
      t.rename :serviceID, :tblservice_id
      t.rename :clientID, :tblclient_id
  end
end
end
