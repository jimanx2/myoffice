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

ActiveRecord::Schema.define(version: 20150603085423) do

  create_table "approvalstats", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "claimattachments", force: :cascade do |t|
    t.string   "filename"
    t.string   "uri"
    t.string   "mimetype"
    t.integer  "claim_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "claims", force: :cascade do |t|
    t.integer  "claimtype_id"
    t.string   "remark"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "claimtypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "employeenum"
    t.integer  "department_id"
    t.integer  "position_id"
    t.string   "phonenum"
    t.string   "email"
    t.string   "address"
    t.integer  "eligibilityleave"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string   "description"
    t.integer  "issueby_id"
    t.integer  "assign_id"
    t.string   "action"
    t.string   "remark"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "issuestats", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaves", force: :cascade do |t|
    t.integer  "employee_id"
    t.datetime "startdate"
    t.datetime "enddate"
    t.string   "remark"
    t.integer  "approveby_id"
    t.integer  "approvalstat_id"
    t.integer  "leavetype_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "leavetypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetingattachments", force: :cascade do |t|
    t.string   "filename"
    t.string   "uri"
    t.string   "mimetype"
    t.integer  "minutemeeting_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string   "objective"
    t.datetime "startdate"
    t.datetime "enddate"
    t.integer  "meetingstat_id"
    t.string   "remark"
    t.integer  "employee_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "meetingstats", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "minutemeetings", force: :cascade do |t|
    t.string   "title"
    t.integer  "meeting_id"
    t.string   "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paymentstats", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paymenttypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "eligibilityleave"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "publicholidays", force: :cascade do |t|
    t.datetime "date"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "position_id"
    t.float    "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "salaries", force: :cascade do |t|
    t.integer  "rate_id"
    t.datetime "date"
    t.integer  "paymenttype_id"
    t.integer  "paymentstat_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
