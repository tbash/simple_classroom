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

ActiveRecord::Schema.define(version: 20151204012230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_sessions", force: :cascade do |t|
    t.string   "title"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_sessions", ["course_id"], name: "index_course_sessions_on_course_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "emails"
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "enrollments", ["course_id"], name: "index_enrollments_on_course_id", using: :btree
  add_index "enrollments", ["user_id"], name: "index_enrollments_on_user_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.string   "username"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "course_session_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "messages", ["course_session_id"], name: "index_messages_on_course_session_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "slides", force: :cascade do |t|
    t.integer  "course_session_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "slides", ["course_session_id"], name: "index_slides_on_course_session_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "username"
    t.integer  "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "course_sessions", "courses"
  add_foreign_key "enrollments", "courses"
  add_foreign_key "enrollments", "users"
  add_foreign_key "messages", "course_sessions"
  add_foreign_key "messages", "users"
  add_foreign_key "slides", "course_sessions"
end
