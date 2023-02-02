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

ActiveRecord::Schema.define(version: 2023_02_02_215028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "salons", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.integer "stars"
    t.boolean "requires_insurance"
  end

  create_table "workstations", force: :cascade do |t|
    t.string "name"
    t.integer "chair_count"
    t.boolean "available"
    t.bigint "salon_id"
    t.index ["salon_id"], name: "index_workstations_on_salon_id"
  end

  add_foreign_key "workstations", "salons"
end
