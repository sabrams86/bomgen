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

ActiveRecord::Schema.define(version: 20150326211755) do

  create_table "a9s", force: true do |t|
    t.string   "part_number"
    t.string   "item_number"
    t.integer  "quantity"
    t.string   "description"
    t.string   "frame_size"
    t.string   "seal_size"
    t.string   "seal_type"
    t.string   "frame_option"
    t.string   "pump_size"
    t.string   "case_steam_jkt"
    t.string   "twell_bearing_hsg"
    t.string   "fastener_matl"
    t.string   "shaft_duty"
    t.string   "shaft_matl"
    t.string   "isolator_option"
    t.string   "ball_qty"
    t.string   "matl_of_const"
    t.string   "oring_matl"
    t.string   "stat_seal_matl"
    t.string   "lip_seal_matl"
    t.string   "exp_groove"
    t.string   "exp_size"
    t.string   "lip_seal_hi_press"
    t.string   "seal_hsg_stm_jkt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attributes", force: true do |t|
    t.string   "model"
    t.string   "name"
    t.string   "value"
    t.string   "icode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "position"
  end

  create_table "products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
