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

ActiveRecord::Schema.define(version: 20170409020858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.decimal  "aluguel_centro"
    t.decimal  "busao"
    t.decimal  "mercado"
    t.decimal  "energia"
    t.decimal  "internet"
    t.decimal  "academia"
    t.decimal  "role"
    t.decimal  "roupas"
    t.decimal  "salariomedio"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.decimal  "monthly_cost"
    t.decimal  "mobile"
    t.decimal  "restaurante"
    t.decimal  "health_care"
    t.decimal  "aluguel_fora"
    t.datetime "deleted_at"
    t.integer  "province_id"
    t.index ["deleted_at"], name: "index_cities_on_deleted_at", using: :btree
    t.index ["province_id"], name: "index_cities_on_province_id", using: :btree
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "school"
    t.integer  "semesters"
    t.decimal  "price"
    t.integer  "degree"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
    t.index ["city_id"], name: "index_courses_on_city_id", using: :btree
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.string "initials"
  end

end
