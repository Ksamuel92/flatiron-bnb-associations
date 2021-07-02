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

ActiveRecord::Schema.define(version: 20210702143240) do

  create_table "cities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "listings", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "title"
    t.text     "description"
    t.string   "address"
    t.integer  "host_id"
    t.integer  "neighborhood_id"
    t.string   "listing_type"
    t.decimal  "price"
    t.index ["host_id"], name: "index_listings_on_host_id"
    t.index ["neighborhood_id"], name: "index_listings_on_neighborhood_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "city_id"
    t.index ["city_id"], name: "index_neighborhoods_on_city_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "checkin"
    t.date     "checkout"
    t.integer  "guest_id"
    t.integer  "listing_id"
    t.index ["guest_id"], name: "index_reservations_on_guest_id"
    t.index ["listing_id"], name: "index_reservations_on_listing_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "description"
    t.integer  "rating"
    t.integer  "guest_id"
    t.integer  "reservation_id"
    t.index ["guest_id"], name: "index_reviews_on_guest_id"
    t.index ["reservation_id"], name: "index_reviews_on_reservation_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "listing_id"
    t.index ["listing_id"], name: "index_users_on_listing_id"
  end

end
