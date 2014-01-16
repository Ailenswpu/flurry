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

ActiveRecord::Schema.define(version: 20140115104820) do

  create_table "spins", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "timestamp"
    t.integer  "session_index"
    t.string   "event"
    t.string   "description"
    t.string   "version"
    t.string   "platform"
    t.string   "device"
    t.string   "userid"
    t.string   "params"
    t.string   "bet_max"
    t.integer  "gems"
    t.integer  "level"
    t.integer  "coins"
    t.integer  "win_ratio"
    t.string   "spin_mode"
    t.integer  "bet_amount"
    t.integer  "bonus"
    t.integer  "boost"
    t.integer  "virtual_time"
  end

end
