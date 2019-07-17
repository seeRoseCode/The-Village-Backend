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

ActiveRecord::Schema.define(version: 2019_07_17_134443) do

  create_table "connections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "connected_user_id"
    t.index ["connected_user_id"], name: "index_connections_on_connected_user_id"
    t.index ["user_id", "connected_user_id"], name: "index_connections_on_user_id_and_connected_user_id", unique: true
    t.index ["user_id"], name: "index_connections_on_user_id"
  end

  create_table "families", force: :cascade do |t|
    t.integer "user_id"
    t.integer "related_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["related_user_id"], name: "index_families_on_related_user_id"
    t.index ["user_id"], name: "index_families_on_user_id"
  end

  create_table "family_members", force: :cascade do |t|
    t.integer "user_id"
    t.integer "related_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["related_user_id"], name: "index_family_members_on_related_user_id"
    t.index ["user_id"], name: "index_family_members_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "img_url"
    t.integer "age"
    t.date "birthday"
    t.boolean "parent", default: false
    t.boolean "married", default: false
    t.boolean "adult"
    t.boolean "lost", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
