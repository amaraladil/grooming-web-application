class ChangePrice < ActiveRecord::Migration[5.1]
  def change
  	change_column :tbl_services, :price, :decimal, precision: 5, scale: 2
  end
end
