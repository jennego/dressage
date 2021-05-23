# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_23_045453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "download_links", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.bigint "dressage_test_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "type"
    t.string "size"
    t.string "note"
    t.index ["dressage_test_id"], name: "index_download_links_on_dressage_test_id"
  end

  create_table "dressage_tests", force: :cascade do |t|
    t.string "org_name"
    t.string "name"
    t.string "level"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "note"
    t.string "subtitle"
    t.string "introduce"
    t.string "purpose"
    t.boolean "current"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "dressage_test_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dressage_test_id"], name: "index_favourites_on_dressage_test_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "url"
    t.string "linkname"
    t.bigint "dressage_test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dressage_test_id"], name: "index_links_on_dressage_test_id"
  end

  create_table "moves", force: :cascade do |t|
    t.string "letter"
    t.string "move"
    t.bigint "dressage_test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order"
    t.index ["dressage_test_id"], name: "index_moves_on_dressage_test_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "auth0_id"
    t.string "name"
    t.index ["auth0_id"], name: "index_users_on_auth0_id", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "download_links", "dressage_tests"
  add_foreign_key "favourites", "dressage_tests"
  add_foreign_key "favourites", "users"
  add_foreign_key "links", "dressage_tests"
  add_foreign_key "moves", "dressage_tests"
end
