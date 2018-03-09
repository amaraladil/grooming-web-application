class CreateTblratings < ActiveRecord::Migration[5.1]
  def change
    create_table :tblratings do |t|
      t.integer :ratingID
      t.integer :rating
      t.string :comment
      t.integer :clientID

      t.timestamps
    end
  end
end
