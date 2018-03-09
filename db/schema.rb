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

ActiveRecord::Schema.define(version: 20180305154152) do

  create_table "tblbookings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "tblbooking_id"
    t.time "dateTime"
    t.boolean "isPaid?"
    t.integer "tbldog_id"
    t.integer "tblstaff_id"
    t.integer "tblservice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tblclient_id"
  end

  create_table "tblclients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "clientID"
    t.string "firstName"
    t.string "lastName"
    t.string "password"
    t.string "phoneNumber"
    t.string "email"
    t.string "address"
    t.string "postalCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "userName"
  end

  create_table "tbldogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "dogID"
    t.string "dogName"
    t.string "dogSize"
    t.integer "tblclient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tblinventories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "inventoryID"
    t.string "name"
    t.integer "price"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tblratings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "ratingID"
    t.integer "rating"
    t.string "comment"
    t.integer "clientID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tblservices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "serviceID"
    t.string "serviceName"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tblstaffs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "staffID"
    t.string "firstName"
    t.string "lastName"
    t.string "password"
    t.string "phoneNumber"
    t.string "email"
    t.string "address"
    t.string "postalCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
