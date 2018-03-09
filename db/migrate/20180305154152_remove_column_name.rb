class RemoveColumnName < ActiveRecord::Migration[5.1]
  def change
  end

  def up
    remove_column :tblbookings, :clientID
  end



end
