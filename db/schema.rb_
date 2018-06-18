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

ActiveRecord::Schema.define(version: 2018_06_14_123121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", id: :bigint, default: nil, force: :cascade do |t|
    t.bigint "photo_id"
    t.bigint "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "quantity", default: 1
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["photo_id"], name: "index_line_items_on_photo_id"
  end

  create_table "orders", id: :bigint, default: nil, force: :cascade do |t|
    t.text "delivery_address"
    t.text "delivery_type"
    t.text "payment_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "cart_id"
    t.index ["cart_id"], name: "index_orders_on_cart_id"
  end

  create_table "photos", force: :cascade do |t|
    t.text "title"
    t.text "image_data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", id: false, force: :cascade do |t|
    t.bigint "id"
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

end
