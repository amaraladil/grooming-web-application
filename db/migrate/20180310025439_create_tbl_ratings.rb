class CreateTblRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :tbl_ratings do |t|
      t.integer :rating
      t.string :comment
      t.references :tbl_users, foreign_key: true

      t.timestamps
    end
  end
end
