# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150221202709) do

  create_table "pictures", force: true do |t|
    t.string   "url"
    t.integer  "tradition_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved"
  end

  create_table "ratings", force: true do |t|
    t.integer  "tradition_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating_number"
  end

  create_table "traditions", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "approved"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "rating"
  end

  create_table "users", force: true do |t|
    t.string   "major"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "graduation_year"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
  end

end
