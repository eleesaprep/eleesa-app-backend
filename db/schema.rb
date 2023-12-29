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

ActiveRecord::Schema[7.0].define(version: 2023_12_22_143022) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "course_code"
    t.string "course_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "semester"
    t.integer "year"
  end

  create_table "enrollments", force: :cascade do |t|
    t.datetime "enrollment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "course_id", null: false
    t.index ["course_id"], name: "index_enrollments_on_course_id"
    t.index ["user_id", "course_id"], name: "index_enrollments_on_user_id_and_course_id", unique: true
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id", null: false
    t.index ["course_id"], name: "index_instructors_on_course_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "file_url"
    t.string "uploaded_by"
    t.datetime "upload_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id", null: false
    t.index ["course_id"], name: "index_materials_on_course_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "option_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id", null: false
    t.index ["option_text", "question_id"], name: "index_options_on_option_text_and_question_id", unique: true
    t.index ["question_id"], name: "index_options_on_question_id"
  end

  create_table "progresses", force: :cascade do |t|
    t.decimal "total_marks_obtained"
    t.decimal "total_marks_available"
    t.string "grade"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "course_id", null: false
    t.bigint "quiz_id", null: false
    t.string "course_code"
    t.string "exam_title"
    t.index ["course_id"], name: "index_progresses_on_course_id"
    t.index ["quiz_id"], name: "index_progresses_on_quiz_id"
    t.index ["user_id", "quiz_id"], name: "index_progresses_on_user_id_and_quiz_id", unique: true
    t.index ["user_id"], name: "index_progresses_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question_text"
    t.string "question_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quiz_id", null: false
    t.string "correct_answer"
    t.integer "time"
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "exam_title"
    t.datetime "exam_date"
    t.decimal "total_marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id", null: false
    t.decimal "duration"
    t.index ["course_id"], name: "index_quizzes_on_course_id"
  end

  create_table "responses", force: :cascade do |t|
    t.string "response_text"
    t.boolean "is_correct"
    t.decimal "marks_obtained"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id", null: false
    t.bigint "quiz_id", null: false
    t.bigint "user_id", null: false
    t.index ["question_id"], name: "index_responses_on_question_id"
    t.index ["quiz_id"], name: "index_responses_on_quiz_id"
    t.index ["user_id"], name: "index_responses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "full_name"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "enrollments", "courses"
  add_foreign_key "enrollments", "users"
  add_foreign_key "instructors", "courses"
  add_foreign_key "materials", "courses"
  add_foreign_key "options", "questions"
  add_foreign_key "progresses", "courses"
  add_foreign_key "progresses", "quizzes"
  add_foreign_key "progresses", "users"
  add_foreign_key "questions", "quizzes"
  add_foreign_key "quizzes", "courses"
  add_foreign_key "responses", "questions"
  add_foreign_key "responses", "quizzes"
  add_foreign_key "responses", "users"
end
