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

ActiveRecord::Schema.define(version: 20150610001157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "maintenances", force: :cascade do |t|
    t.string "description"
  end

  create_table "maintenances_trains", force: :cascade do |t|
    t.integer "maintenance_id"
    t.integer "train_id"
  end

  add_index "maintenances_trains", ["maintenance_id"], name: "index_maintenances_trains_on_maintenance_id", using: :btree
  add_index "maintenances_trains", ["train_id"], name: "index_maintenances_trains_on_train_id", using: :btree

  create_table "maintenances_trains_workers", force: :cascade do |t|
    t.integer "maintenance_id"
    t.integer "train_id"
    t.integer "worker_id"
  end

  add_index "maintenances_trains_workers", ["maintenance_id"], name: "index_maintenances_trains_workers_on_maintenance_id", using: :btree
  add_index "maintenances_trains_workers", ["train_id"], name: "index_maintenances_trains_workers_on_train_id", using: :btree
  add_index "maintenances_trains_workers", ["worker_id"], name: "index_maintenances_trains_workers_on_worker_id", using: :btree

  create_table "trains", force: :cascade do |t|
    t.string "atis_ref_id"
  end

  create_table "trains_workers", force: :cascade do |t|
    t.integer "train_id"
    t.integer "worker_id"
  end

  add_index "trains_workers", ["train_id"], name: "index_trains_workers_on_train_id", using: :btree
  add_index "trains_workers", ["worker_id"], name: "index_trains_workers_on_worker_id", using: :btree

  create_table "work_order", force: :cascade do |t|
    t.integer  "train_id"
    t.integer  "worker_id"
    t.integer  "maintenance_id"
    t.datetime "start_time"
    t.datetime "end_time"
  end

  add_index "work_order", ["maintenance_id"], name: "index_work_order_on_maintenance_id", using: :btree
  add_index "work_order", ["train_id"], name: "index_work_order_on_train_id", using: :btree
  add_index "work_order", ["worker_id"], name: "index_work_order_on_worker_id", using: :btree

  create_table "workers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "craft"
  end

end
