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

ActiveRecord::Schema.define(version: 20131008093805) do

  create_table "cdrs", force: true do |t|
    t.string   "calldate"
    t.string   "src"
    t.string   "dst"
    t.string   "dcontext"
    t.string   "channel"
    t.string   "dstchannel"
    t.string   "lastapp"
    t.string   "lastdata"
    t.integer  "duration"
    t.integer  "billsec"
    t.string   "disposition"
    t.integer  "amaflags"
    t.string   "accountcode"
    t.string   "uniqueid"
    t.string   "userfield"
    t.string   "peeraccount"
    t.string   "linkedid"
    t.integer  "sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cels", force: true do |t|
    t.string   "eventtype"
    t.datetime "eventtime"
    t.string   "userdeftype"
    t.string   "cid_name"
    t.string   "cid_num"
    t.string   "cid_ani"
    t.string   "cid_rdnis"
    t.string   "cid_dnid"
    t.string   "exten"
    t.string   "context"
    t.string   "channame"
    t.string   "appname"
    t.string   "appdata"
    t.integer  "amaflags"
    t.string   "accountcode"
    t.string   "peeraccount"
    t.string   "uniqueid"
    t.string   "linkedid"
    t.string   "userfield"
    t.string   "peer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lastcalls", force: true do |t|
    t.string   "extention"
    t.string   "tnumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
