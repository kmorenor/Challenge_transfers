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

ActiveRecord::Schema.define(version: 20150306164056) do

  create_table "transfers", force: true do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transfers", ["receiver_id"], name: "index_transfers_on_receiver_id"
  add_index "transfers", ["sender_id"], name: "index_transfers_on_sender_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
