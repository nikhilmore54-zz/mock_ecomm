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

<<<<<<< HEAD
<<<<<<< 18eb6709bc357627d869519a8734859a6daa20e0
ActiveRecord::Schema.define(version: 2018_06_14_123121) do
=======
ActiveRecord::Schema.define(version: 2018_06_20_115157) do
>>>>>>> Add order page
=======
ActiveRecord::Schema.define(version: 2018_06_20_115157) do
>>>>>>> master

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
<<<<<<< 18eb6709bc357627d869519a8734859a6daa20e0
=======
    t.boolean "status", default: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
>>>>>>> Add order page
=======
    t.boolean "status", default: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
>>>>>>> master
  end

  create_table "line_items", id: :serial, force: :cascade do |t|
    t.bigint "photo_id"
    t.bigint "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "quantity", default: 1
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["photo_id"], name: "index_line_items_on_photo_id"
  end

<<<<<<< HEAD
<<<<<<< 18eb6709bc357627d869519a8734859a6daa20e0
  create_table "orders", id: :bigint, default: nil, force: :cascade do |t|
    t.text "delivery_address"
    t.text "delivery_type"
    t.text "payment_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "cart_id"
    t.index ["cart_id"], name: "index_orders_on_cart_id"
=======
=======
>>>>>>> master
  create_table "orders", force: :cascade do |t|
    t.string "delivery_address"
    t.string "delivery_type"
    t.string "payment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "cart_id"
    t.index ["cart_id"], name: "index_orders_on_cart_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
<<<<<<< HEAD
>>>>>>> Add order page
=======
>>>>>>> master
  end

  create_table "photos", force: :cascade do |t|
    t.text "title"
    t.text "image_data"
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
<<<<<<< 18eb6709bc357627d869519a8734859a6daa20e0
  end

  create_table "users", id: false, force: :cascade do |t|
    t.bigint "id"
=======
=======
>>>>>>> master
    t.bigint "user_id"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
<<<<<<< HEAD
>>>>>>> Add order page
=======
>>>>>>> master
    t.text "email", default: ""
    t.text "encrypted_password", default: ""
    t.text "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.text "current_sign_in_ip"
    t.text "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

<<<<<<< HEAD
<<<<<<< 18eb6709bc357627d869519a8734859a6daa20e0
=======
=======
>>>>>>> master
  add_foreign_key "carts", "users"
  add_foreign_key "orders", "carts"
  add_foreign_key "orders", "users"
  add_foreign_key "photos", "users"
<<<<<<< HEAD
>>>>>>> Add order page
=======
>>>>>>> master
end
