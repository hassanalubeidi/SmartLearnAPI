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

ActiveRecord::Schema.define(version: 20160417215912) do

  create_table "answers", force: :cascade do |t|
    t.integer  "marks",       limit: 4
    t.integer  "question_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id",     limit: 4
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "subject_id", limit: 4
    t.string   "year_group", limit: 255
  end

  create_table "classrooms_users", id: false, force: :cascade do |t|
    t.integer "user_id",      limit: 4
    t.integer "classroom_id", limit: 4
  end

  add_index "classrooms_users", ["classroom_id"], name: "index_classrooms_users_on_classroom_id", using: :btree
  add_index "classrooms_users", ["user_id"], name: "index_classrooms_users_on_user_id", using: :btree

  create_table "main_questions", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "level",            limit: 4
    t.text     "html",             limit: 65535
    t.text     "mark_scheme_html", limit: 65535
    t.integer  "test_paper_id",    limit: 4
    t.integer  "topic_id",         limit: 4
  end

  create_table "main_questions_objectives", id: false, force: :cascade do |t|
    t.integer "main_question_id", limit: 4
    t.integer "objective_id",     limit: 4
  end

  add_index "main_questions_objectives", ["main_question_id"], name: "index_main_questions_objectives_on_main_question_id", using: :btree
  add_index "main_questions_objectives", ["objective_id"], name: "index_main_questions_objectives_on_objective_id", using: :btree

  create_table "main_questions_test_papers", id: false, force: :cascade do |t|
    t.integer "test_paper_id",    limit: 4
    t.integer "main_question_id", limit: 4
  end

  add_index "main_questions_test_papers", ["main_question_id"], name: "index_main_questions_test_papers_on_main_question_id", using: :btree
  add_index "main_questions_test_papers", ["test_paper_id"], name: "index_main_questions_test_papers_on_test_paper_id", using: :btree

  create_table "objectives", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "topic_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "problems", force: :cascade do |t|
    t.text     "what_went_wrong", limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "topic_id",        limit: 4
    t.integer  "answer_id",       limit: 4
    t.integer  "user_id",         limit: 4
  end

  create_table "questions", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "main_question_id", limit: 4
    t.integer  "level",            limit: 4
    t.text     "html",             limit: 65535
    t.text     "mark_scheme_html", limit: 65535
    t.integer  "out_of",           limit: 4
    t.string   "position",         limit: 255
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "status",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "problem_id", limit: 4
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "test_papers", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "subject_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "unit_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "subject_id", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               limit: 255,   default: "email", null: false
    t.string   "uid",                    limit: 255,   default: "",      null: false
    t.string   "encrypted_password",     limit: 255,   default: "",      null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.string   "name",                   limit: 255
    t.string   "nickname",               limit: 255
    t.string   "image",                  limit: 255
    t.string   "email",                  limit: 255
    t.text     "tokens",                 limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "classroom_id",           limit: 4
    t.string   "year_group",             limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

end
