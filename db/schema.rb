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

ActiveRecord::Schema.define(version: 2018_09_05_040138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

end
