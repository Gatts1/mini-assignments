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

ActiveRecord::Schema.define(version: 2019_04_02_230315) do

  create_table "owners", force: :cascade do |t|
    t.string "owner_name"
    t.date "owner_birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "age"
    t.integer "Owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Owner_id"], name: "index_pets_on_Owner_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "Pet_id"
    t.integer "Service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Pet_id"], name: "index_tickets_on_Pet_id"
    t.index ["Service_id"], name: "index_tickets_on_Service_id"
  end

end
