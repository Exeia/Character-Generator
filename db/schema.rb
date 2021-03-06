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

ActiveRecord::Schema.define(version: 20150518052225) do

  create_table "character_races", force: true do |t|
    t.string   "name"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "intel"
    t.integer  "wis"
    t.integer  "cha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "job"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "str",        default: 0
    t.integer  "dex",        default: 0
    t.integer  "con",        default: 0
    t.integer  "intel",      default: 0
    t.integer  "wis",        default: 0
    t.integer  "cha",        default: 0
    t.string   "race_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "handle"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_digest"
  end

end
