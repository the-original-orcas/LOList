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

ActiveRecord::Schema.define(version: 20150319215033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comedians", force: :cascade do |t|
    t.text     "name"
    t.string   "image"
    t.string   "youtube_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "event_id"
  end

  create_table "comedians_events", id: false, force: :cascade do |t|
    t.integer "comedian_id", null: false
    t.integer "event_id",    null: false
  end

  add_index "comedians_events", ["comedian_id", "event_id"], name: "index_comedians_events_on_comedian_id_and_event_id", using: :btree

  create_table "comedians_users", force: :cascade do |t|
    t.integer "user_id",     null: false
    t.integer "comedian_id", null: false
  end

  create_table "events", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.text     "venue"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "comedian_id"
    t.string   "city"
    t.string   "state_code"
    t.string   "postal_code"
    t.string   "address"
    t.integer  "seatgeek_id"
  end

  create_table "form_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "accesstoken"
    t.string   "refreshtoken"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.string   "image"
    t.string   "urls"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comedian_id"
    t.string   "postal_code"
    t.boolean  "subscribed",             default: true
  end

  add_index "users", ["comedian_id"], name: "index_users_on_comedian_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "identities", "users"
  add_foreign_key "users", "comedians"
end
