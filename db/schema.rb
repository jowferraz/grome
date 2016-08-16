# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160815013843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "rg"
    t.string   "street"
    t.string   "number"
    t.string   "zipcode"
    t.string   "country"
    t.string   "accept_terms"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "alerts", force: :cascade do |t|
    t.string   "date"
    t.string   "hasDoc"
    t.string   "status"
    t.string   "date_update"
    t.string   "date_cad"
    t.integer  "item_id"
    t.integer  "account_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "alerts", ["account_id"], name: "index_alerts_on_account_id", using: :btree
  add_index "alerts", ["item_id"], name: "index_alerts_on_item_id", using: :btree

  create_table "equipment", force: :cascade do |t|
    t.string   "equipmentp"
    t.string   "name"
    t.string   "brand"
    t.string   "model"
    t.string   "color"
    t.string   "serial"
    t.string   "details"
    t.string   "alert"
    t.string   "date_cad"
    t.string   "date_buy"
    t.integer  "item_id"
    t.integer  "gear_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "equipment", ["gear_id"], name: "index_equipment_on_gear_id", using: :btree
  add_index "equipment", ["item_id"], name: "index_equipment_on_item_id", using: :btree

  create_table "gears", force: :cascade do |t|
    t.string   "geartype"
    t.string   "model"
    t.string   "name"
    t.string   "serial"
    t.string   "color"
    t.string   "brand"
    t.string   "details"
    t.string   "date_buy"
    t.string   "alert"
    t.string   "image_file_name"
    t.integer  "item_id"
    t.integer  "account_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "image"
  end

  add_index "gears", ["account_id"], name: "index_gears_on_account_id", using: :btree
  add_index "gears", ["item_id"], name: "index_gears_on_item_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "type"
    t.string   "date_cad"
    t.text     "alert"
    t.string   "status"
    t.integer  "user_id"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "items", ["account_id"], name: "index_items_on_account_id", using: :btree
  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

  create_table "searches", force: :cascade do |t|
    t.string   "itemtp"
    t.string   "serial"
    t.string   "model"
    t.string   "name"
    t.string   "brand"
    t.string   "color"
    t.string   "details"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "searches", ["user_id"], name: "index_searches_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "accounts", "users"
  add_foreign_key "alerts", "accounts"
  add_foreign_key "alerts", "items"
  add_foreign_key "equipment", "gears"
  add_foreign_key "equipment", "items"
  add_foreign_key "gears", "accounts"
  add_foreign_key "gears", "items"
  add_foreign_key "items", "accounts"
  add_foreign_key "items", "users"
end
