class CreateTblDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :tbl_dogs do |t|
      t.string :dogName
      t.string :dogType
      t.string :dogSize
      t.references :tbl_users, foreign_key: true, default: 1

      t.timestamps
    end
  end
end
