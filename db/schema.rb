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

ActiveRecord::Schema.define(version: 2022_01_09_225920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "user"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "branches", force: :cascade do |t|
    t.string "store"
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "checks", force: :cascade do |t|
    t.date "date"
    t.time "hour"
    t.boolean "check"
    t.bigint "employees_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employees_id"], name: "index_checks_on_employees_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "privateNumber"
    t.string "employeeNumber"
    t.string "email"
    t.string "name"
    t.string "position"
    t.boolean "status"
    t.bigint "branches_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["branches_id"], name: "index_employees_on_branches_id"
  end

  add_foreign_key "checks", "employees", column: "employees_id"
  add_foreign_key "employees", "branches", column: "branches_id"
end
