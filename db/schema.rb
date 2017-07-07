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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hikers", id: :integer, default: nil, force: :cascade do |t|
    t.text "name"
  end

  create_table "munros", id: :integer, default: nil, force: :cascade do |t|
    t.text "name"
    t.text "gaelic_name"
    t.integer "heightm"
    t.integer "heightf"
    t.string "map", limit: 2
    t.string "altmap", limit: 2
    t.string "grid", limit: 2
    t.integer "easting"
    t.integer "northing"
    t.boolean "trigpoint"
  end

  create_table "walks", id: :integer, default: nil, force: :cascade do |t|
    t.integer "munro_id"
    t.integer "hiker_id"
    t.integer "time"
  end

  add_foreign_key "walks", "hikers", name: "walks_hiker_id_fkey"
  add_foreign_key "walks", "munros", name: "walks_munro_id_fkey"
end
