class CreateTblclients < ActiveRecord::Migration[5.1]
  def change
    create_table :tblclients do |t|
      t.integer :clientID
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
