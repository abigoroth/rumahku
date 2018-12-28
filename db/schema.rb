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

ActiveRecord::Schema.define(version: 2018_12_28_032047) do

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

  create_table "apartment_channels", force: :cascade do |t|
    t.jsonb "requested_rent_date"
    t.integer "apartment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apartments", force: :cascade do |t|
    t.text "number_apartment"
    t.text "level"
    t.string "apartment_type"
    t.datetime "parking_queue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "resident_id"
    t.date "ParkingQueue"
    t.string "info_id"
    t.string "user_id"
    t.integer "park_space_id"
    t.date "start_rent"
    t.date "end_rent"
    t.integer "requested_park_space_id"
    t.date "requested_start_rent"
    t.date "requested_end_rent"
    t.jsonb "requested_rent_date"
    t.integer "car_id"
    t.integer "guest_id"
  end

  create_table "apartments_users", id: false, force: :cascade do |t|
    t.bigint "apartment_id"
    t.bigint "user_id"
    t.index ["apartment_id"], name: "index_apartments_users_on_apartment_id"
    t.index ["user_id"], name: "index_apartments_users_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "cartype"
    t.string "owner"
    t.string "queue"
    t.string "platnum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "apartment_id"
    t.integer "user_id"
    t.integer "park_space_id"
  end

  create_table "chat_rooms", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "admin_id"
    t.bigint "guard_id"
    t.index ["user_id"], name: "index_chat_rooms_on_user_id"
  end

  create_table "clusters", force: :cascade do |t|
    t.string "apartment_name"
    t.string "apartment_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "floorplans", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cluster_id"
    t.string "picture"
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

  create_table "guests", force: :cascade do |t|
    t.string "plat_number"
    t.string "block"
    t.date "date"
    t.string "phone_number"
    t.text "purpose"
    t.datetime "guest_in"
    t.datetime "guest_out"
    t.integer "apartment_id"
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
    t.string "IC_number"
    t.string "races"
    t.string "occupation"
    t.string "emergency_name"
    t.string "emergency_contact"
    t.string "house_member"
    t.string "house_member_name"
    t.string "house_member_age"
    t.string "house_member_relationship"
    t.string "age"
    t.integer "apartment_id"
  end

  create_table "map_areas", force: :cascade do |t|
    t.string "description"
    t.string "coordinate"
    t.bigint "floorplan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["floorplan_id"], name: "index_map_areas_on_floorplan_id"
  end

  create_table "mapareas", force: :cascade do |t|
    t.string "description"
    t.string "coordinate"
    t.bigint "floorplan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["floorplan_id"], name: "index_mapareas_on_floorplan_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "member_name"
    t.string "member_age"
    t.string "member_relationship"
    t.bigint "info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id"
    t.bigint "chat_room_id"
    t.bigint "admin_id"
    t.bigint "guard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_messages_on_admin_id"
    t.index ["chat_room_id"], name: "index_messages_on_chat_room_id"
    t.index ["guard_id"], name: "index_messages_on_guard_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
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
    t.string "picture"
    t.decimal "total"
  end

  create_table "park_spaces", force: :cascade do |t|
    t.string "parknum"
    t.string "spacetype"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "parkspacelog_id"
    t.string "parking_queue"
    t.date "start_rent"
    t.date "end_rent"
    t.integer "apartment_id"
    t.integer "car_id"
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
    t.string "park_space_id"
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
    t.string "phonenum"
    t.string "occupation"
    t.string "IC_number"
    t.string "races"
    t.string "emergency_name"
    t.string "emergency_contact"
    t.string "house_member"
    t.string "house_member_name"
    t.string "house_member_age"
    t.string "house_member_relationship"
    t.string "age"
    t.string "parent_id"
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128
    t.integer "apartment_id"
    t.integer "car_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_token"], name: "index_users_on_remember_token"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chat_rooms", "users"
  add_foreign_key "members", "infos"
  add_foreign_key "messages", "admins"
  add_foreign_key "messages", "chat_rooms"
  add_foreign_key "messages", "guards"
  add_foreign_key "messages", "users"
end
