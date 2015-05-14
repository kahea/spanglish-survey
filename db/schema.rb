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

ActiveRecord::Schema.define(version: 20150513220615) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id", null: false
    t.integer  "user_id"
    t.string   "text"
    t.string   "choice"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "text_spanish",    null: false
    t.string   "text_english",    null: false
    t.string   "pic_url"
    t.boolean  "multiple_choice"
    t.string   "option_a"
    t.string   "option_b"
    t.string   "option_c"
    t.string   "option_d"
    t.string   "option_e"
    t.string   "option_f"
    t.string   "option_g"
    t.string   "option_h"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "password"
    t.integer  "age"
    t.string   "gender"
    t.integer  "learned_spanish_age"
    t.integer  "learned_english_age"
    t.integer  "years_in_usa"
    t.integer  "years_in_mexico"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
