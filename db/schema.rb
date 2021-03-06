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

ActiveRecord::Schema.define(version: 20170630121046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "customer_id",                                null: false
    t.integer  "room_id",                                    null: false
    t.datetime "scheduled_checkin",                          null: false
    t.datetime "scheduled_checkout",                         null: false
    t.string   "status",             default: "Reservation", null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.datetime "actual_checkin"
    t.datetime "actual_checkout"
    t.index ["customer_id"], name: "index_bookings_on_customer_id", using: :btree
    t.index ["room_id"], name: "index_bookings_on_room_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "phone",      null: false
    t.string   "email",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "address",    null: false
    t.string   "website"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "room_number", null: false
    t.string   "room_type",   null: false
    t.integer  "beds",        null: false
    t.string   "bed_type",    null: false
    t.integer  "hotel_id",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id", using: :btree
  end

end
