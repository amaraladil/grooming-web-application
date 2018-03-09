class CreateTblstaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :tblstaffs do |t|
      t.integer :staffID
      t.string :firstName
      t.string :lastName
      t.string :password
      t.string :phoneNumber
      t.string :email
      t.string :address
      t.string :postalCode

      t.timestamps
    end
  end
end
