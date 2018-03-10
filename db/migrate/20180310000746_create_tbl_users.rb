class CreateTblUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :tbl_users do |t|
      t.string :firstName
      t.string :lastName
      t.string :phoneNumber
      t.string :email
      t.string :address
      t.string :postalCode

      t.timestamps
    end
  end
end
