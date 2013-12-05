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

ActiveRecord::Schema.define(version: 20131204190400) do

  create_table "applications", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "bad_leopard9333_controls", force: true do |t|
    t.string "name"
  end

  create_table "bad_leopard9333_functions", force: true do |t|
    t.string  "name"
    t.integer "control_id"
  end

  create_table "bad_leopard9333_mods", force: true do |t|
    t.string "name"
  end

  create_table "bad_leopard9333_routs", force: true do |t|
    t.string "path_name"
    t.string "path_source"
    t.string "req_type"
  end

  create_table "disturbed_equilibrium1772_controls", force: true do |t|
    t.string "name"
  end

  create_table "disturbed_equilibrium1772_functions", force: true do |t|
    t.string  "name"
    t.integer "control_id"
  end

  create_table "disturbed_equilibrium1772_mods", force: true do |t|
    t.string "name"
  end

  create_table "disturbed_equilibrium1772_routs", force: true do |t|
    t.string "path_name"
    t.string "path_source"
    t.string "req_type"
  end

  create_table "finally_controls", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finally_functions", force: true do |t|
    t.string   "name"
    t.integer  "control_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finally_methods", force: true do |t|
    t.string   "name"
    t.integer  "control_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finally_somethings", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "glacial_sierra1337_controls", force: true do |t|
    t.string "name"
  end

  create_table "glacial_sierra1337_functions", force: true do |t|
    t.string  "name"
    t.integer "control_id"
  end

  create_table "glacial_sierra1337_mods", force: true do |t|
    t.string "name"
  end

  create_table "glacial_sierra1337_routs", force: true do |t|
    t.string "path_name"
    t.string "path_source"
    t.string "req_type"
  end

  create_table "glacial_sierra9138_somethings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "roaring_lion6571_somethingelses", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "some_controllers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "some_functions", force: true do |t|
    t.string   "name"
    t.integer  "controller_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "some_testings", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stonehenge5145_controls", force: true do |t|
    t.string "name"
  end

  create_table "stonehenge5145_functions", force: true do |t|
    t.string  "name"
    t.integer "control_id"
  end

  create_table "stonehenge5145_mods", force: true do |t|
    t.string "name"
  end

  create_table "stonehenge5145_routs", force: true do |t|
    t.string "path_name"
    t.string "path_source"
    t.string "req_type"
  end

  create_table "table_glacial_sierra4949_controls", force: true do |t|
    t.string "name"
  end

  create_table "table_glacial_sierra4949_functions", force: true do |t|
    t.string  "name"
    t.integer "control_id"
  end

  create_table "table_glacial_sierra4949_mods", force: true do |t|
    t.string "name"
  end

  create_table "table_glacial_sierra4949_routs", force: true do |t|
    t.string "path_name"
    t.string "path_source"
    t.string "req_type"
  end

  create_table "table_news", force: true do |t|
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.boolean  "guest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.datetime "DOB"
  end

  create_table "wall_plant6020_controls", force: true do |t|
    t.string "name"
  end

  create_table "wall_plant6020_functions", force: true do |t|
    t.string  "name"
    t.integer "control_id"
  end

  create_table "wall_plant6020_mods", force: true do |t|
    t.string "name"
  end

  create_table "wall_plant6020_routs", force: true do |t|
    t.string "path_name"
    t.string "path_source"
    t.string "req_type"
  end

end
