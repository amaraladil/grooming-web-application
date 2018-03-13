class AddUserType < ActiveRecord::Migration[5.1]
  def change
  	add_column :tbl_users, :userType, :integer, default: 3
  end
end
