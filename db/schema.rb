# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180310025439) do

  create_table "tbl_bills", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "tbl_bookings_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tbl_bookings_id"], name: "index_tbl_bills_on_tbl_bookings_id"
  end

  create_table "tbl_bookings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.time "dateTime"
    t.boolean "isPaid?"
    t.bigint "tbl_users_id"
    t.bigint "tbl_dogs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tbl_dogs_id"], name: "index_tbl_bookings_on_tbl_dogs_id"
    t.index ["tbl_users_id"], name: "index_tbl_bookings_on_tbl_users_id"
  end

  create_table "tbl_dogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "dogName"
    t.string "dogType"
    t.string "dogSize"
    t.bigint "tbl_users_id", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tbl_users_id"], name: "index_tbl_dogs_on_tbl_users_id"
  end

  create_table "tbl_inventories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.decimal "price", precision: 10
    t.integer "quantity"
    t.boolean "isActive?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tbl_ratings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "rating"
    t.string "comment"
    t.bigint "tbl_users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tbl_users_id"], name: "index_tbl_ratings_on_tbl_users_id"
  end

  create_table "tbl_services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "serviceName"
    t.decimal "price", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tbl_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "phoneNumber"
    t.string "email"
    t.string "address"
    t.string "postalCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  add_foreign_key "tbl_bills", "tbl_bookings", column: "tbl_bookings_id"
  add_foreign_key "tbl_bookings", "tbl_dogs", column: "tbl_dogs_id"
  add_foreign_key "tbl_bookings", "tbl_users", column: "tbl_users_id"
  add_foreign_key "tbl_dogs", "tbl_users", column: "tbl_users_id"
  add_foreign_key "tbl_ratings", "tbl_users", column: "tbl_users_id"
end
