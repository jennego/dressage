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

ActiveRecord::Schema.define(version: 2021_05_11_232054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "favourites_id"
    t.index ["favourites_id"], name: "index_dressage_tests_on_favourites_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
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
    t.integer "num"
    t.index ["dressage_test_id"], name: "index_moves_on_dressage_test_id"
  end

  create_table "oauth_access_tokens", force: :cascade do |t|
    t.bigint "resource_owner_id"
    t.bigint "application_id", null: false
    t.string "token", null: false
    t.string "refresh_token"
    t.integer "expires_in"
    t.datetime "revoked_at"
    t.datetime "created_at", null: false
    t.string "scopes"
    t.string "previous_refresh_token", default: "", null: false
    t.index ["application_id"], name: "index_oauth_access_tokens_on_application_id"
    t.index ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true
    t.index ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id"
    t.index ["token"], name: "index_oauth_access_tokens_on_token", unique: true
  end

  create_table "oauth_applications", force: :cascade do |t|
    t.string "name", null: false
    t.string "uid", null: false
    t.string "secret", null: false
    t.text "redirect_uri"
    t.string "scopes", default: "", null: false
    t.boolean "confidential", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["uid"], name: "index_oauth_applications_on_uid", unique: true
  end

  create_table "test_links", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.bigint "dressage_test_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dressage_test_id"], name: "index_test_links_on_dressage_test_id"
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
    t.string "provider"
    t.string "uid"
    t.string "auth0_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dressage_tests", "favourites", column: "favourites_id"
  add_foreign_key "favourites", "users"
  add_foreign_key "links", "dressage_tests"
  add_foreign_key "moves", "dressage_tests"
  add_foreign_key "oauth_access_tokens", "oauth_applications", column: "application_id"
  add_foreign_key "test_links", "dressage_tests"
end
