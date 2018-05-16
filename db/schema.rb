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

ActiveRecord::Schema.define(version: 2018_05_15_051520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dressage_tests", force: :cascade do |t|
    t.string "org_name"
    t.string "name"
    t.string "level"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moves", force: :cascade do |t|
    t.string "letter"
    t.string "move"
    t.bigint "dressage_tests_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dressage_tests_id"], name: "index_moves_on_dressage_tests_id"
  end

  add_foreign_key "moves", "dressage_tests", column: "dressage_tests_id"
end
