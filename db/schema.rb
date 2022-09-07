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

ActiveRecord::Schema.define(version: 2022_09_07_121225) do

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "license_no"
    t.string "identity_card_no"
    t.integer "vehicle_id"
    t.integer "route_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
  end

  create_table "saccos", force: :cascade do |t|
    t.string "name"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "model"
    t.string "plate_no"
    t.integer "owner_id"
    t.integer "sacco_id"
  end

end
