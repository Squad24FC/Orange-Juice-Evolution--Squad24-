# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_15_163011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "track_id", null: false
    t.index ["track_id"], name: "index_chapters_on_track_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "track_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["track_id"], name: "index_enrollments_on_track_id"
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "lesson_type", null: false
    t.string "author", default: "", null: false
    t.integer "duration", null: false
    t.string "source_url", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "subject_id", null: false
    t.boolean "completed", default: false
    t.index ["subject_id"], name: "index_lessons_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "chapter_id", null: false
    t.boolean "completed", default: false
    t.index ["chapter_id"], name: "index_subjects_on_chapter_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "thumb_url", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "progress", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "role", default: 0, null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chapters", "tracks"
  add_foreign_key "enrollments", "tracks"
  add_foreign_key "enrollments", "users"
  add_foreign_key "lessons", "subjects"
  add_foreign_key "subjects", "chapters"
end
