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

ActiveRecord::Schema.define(version: 2019_08_26_010749) do

  create_table "recipients", force: :cascade do |t|
    t.string "name"
    t.text "shamei"
    t.string "sec_name1"
    t.string "sec_name2"
    t.string "position"
    t.integer "post_code"
    t.text "address1"
    t.text "address2"
    t.boolean "dolor"
    t.string "honor"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
