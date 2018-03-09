class AddColumnName < ActiveRecord::Migration[5.1]
  def change
  	

end


 def down
add_column :tblclients, :userName, :string 
add_column :tblbookings, :tblclient_id, :integer   
end

end
