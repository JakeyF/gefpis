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

ActiveRecord::Schema.define(version: 20160513000628) do

  create_table "evaluation_ts", force: :cascade do |t|
    t.string   "eval_name"
    t.integer  "member_t_id"
    t.string   "tutoring_comments"
    t.string   "math_module_comments"
    t.string   "math_sw_comments"
    t.string   "eng_comments"
    t.string   "eng_sw_comments"
    t.string   "suggestions"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.datetime "evaldatetime"
  end

  create_table "evaluations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "file_file_name"
  end

  create_table "member_ts", force: :cascade do |t|
    t.string   "id_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.integer  "contact_no",             limit: 8
    t.date     "attendance"
    t.string   "committee"
    t.date     "birthday"
    t.string   "year_course"
    t.string   "scholarship"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "membership"
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "member_ts", ["email"], name: "index_member_ts_on_email", unique: true
  add_index "member_ts", ["reset_password_token"], name: "index_member_ts_on_reset_password_token", unique: true

  create_table "members", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "module_ts", force: :cascade do |t|
    t.string   "file_name"
    t.string   "subject"
    t.datetime "upload_date"
    t.string   "topic"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "member_t_id"
  end

  create_table "tpr_ts", force: :cascade do |t|
    t.string   "week_no"
    t.integer  "tutee_t_id"
    t.string   "strengths"
    t.string   "weaknesses"
    t.string   "actions"
    t.integer  "module_t_id"
    t.integer  "member_t_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tprs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutee_ts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "school"
    t.integer  "math_grade"
    t.integer  "eng_grade"
    t.string   "father_name"
    t.string   "father_occupation"
    t.string   "mother_name"
    t.string   "mother_occupation"
    t.string   "ambition"
    t.string   "fav_subject"
    t.string   "fav_food"
    t.string   "fav_color"
    t.string   "fav_movie"
    t.date     "attendance"
    t.integer  "module_t_id"
    t.integer  "group_no"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "tutees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "worksheet_ts", force: :cascade do |t|
    t.integer  "module_t_id"
    t.integer  "member_t_id"
    t.integer  "tutee_t_id"
    t.string   "school"
    t.integer  "score"
    t.string   "reached_quota"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "worksheets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
