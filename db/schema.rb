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

ActiveRecord::Schema.define(version: 2021_06_04_045009) do

  create_table "candidates", force: :cascade do |t|
    t.string "Name"
    t.string "Surname"
    t.string "State"
    t.string "PartyAb"
    t.string "PartyName"
    t.string "CandidateNumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "count"
  end

  create_table "voters", force: :cascade do |t|
    t.string "Name"
    t.string "Gender"
    t.string "Title"
    t.string "PhoneNumber"
    t.string "CitizenNumber"
    t.text "Address"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
