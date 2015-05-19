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

ActiveRecord::Schema.define(version: 20150519004955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bays", force: :cascade do |t|
  end

  create_table "bays_maintenances_trains_workers", force: :cascade do |t|
    t.integer "bay_id"
    t.integer "maintenance_id"
    t.integer "train_id"
    t.integer "worker_id"
  end

  add_index "bays_maintenances_trains_workers", ["bay_id"], name: "index_bays_maintenances_trains_workers_on_bay_id", using: :btree
  add_index "bays_maintenances_trains_workers", ["maintenance_id"], name: "index_bays_maintenances_trains_workers_on_maintenance_id", using: :btree
  add_index "bays_maintenances_trains_workers", ["train_id"], name: "index_bays_maintenances_trains_workers_on_train_id", using: :btree
  add_index "bays_maintenances_trains_workers", ["worker_id"], name: "index_bays_maintenances_trains_workers_on_worker_id", using: :btree

  create_table "maintenances", force: :cascade do |t|
    t.string "description"
  end

  create_table "trains", force: :cascade do |t|
    t.string "atis_ref_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

end
