class CreateTblSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :tbl_schedules do |t|
    	t.datetime :dateTime
    	t.references :tbl_users, foreign_key: true, default: 2
    	t.boolean :isTaken, default: 0

      t.timestamps
    end
  end
end
