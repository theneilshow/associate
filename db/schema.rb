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

ActiveRecord::Schema.define(version: 2019_06_28_055537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "printers", force: :cascade do |t|
    t.string "name"
    t.boolean "isPrinting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prints", force: :cascade do |t|
    t.string "name"
    t.string "material"
    t.boolean "isFinished"
    t.bigint "printer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["printer_id"], name: "index_prints_on_printer_id"
  end

  add_foreign_key "prints", "printers"
end
