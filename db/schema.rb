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

ActiveRecord::Schema.define(version: 2018_09_10_065240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "apartments", force: :cascade do |t|
    t.string "Name"
    t.text "Age"
    t.text "ParkingNumber"
    t.text "HpNumber"
    t.text "NumberApartment"
    t.text "Level"
    t.string "ApartmentType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "resident_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "cartype"
    t.string "owner"
    t.string "queue"
    t.string "platnum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "apartment_id"
  end

  create_table "guards", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_guards_on_email", unique: true
    t.index ["reset_password_token"], name: "index_guards_on_reset_password_token", unique: true
  end

  create_table "infos", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "apartmentnum"
    t.string "phonenumber"
    t.boolean "owner"
    t.string "password"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jeng2s", force: :cascade do |t|
    t.string "name"
    t.text "age"
    t.text "parking_number"
    t.text "phone_number"
    t.text "number_apartment"
    t.text "level"
    t.string "apartment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jeng3s", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "parking_number"
    t.string "phone_number"
    t.string "number_apartment"
    t.string "level"
    t.string "apartment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "park_spacerentals", force: :cascade do |t|
    t.string "park_space_id"
    t.string "car_id"
    t.date "start_rent"
    t.date "end_rent"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "apartment_id"
  end

  create_table "park_spaces", force: :cascade do |t|
    t.string "parknum"
    t.string "spacetype"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parkingqueues", force: :cascade do |t|
    t.string "name"
    t.string "apartment_number"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parkspacelogs", force: :cascade do |t|
    t.string "parking_no"
    t.date "date"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "residents", force: :cascade do |t|
    t.string "name"
    t.string "phonenum"
    t.boolean "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fname"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "owner"
    t.string "fullname"
    t.string "aptnums"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
