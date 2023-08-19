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

ActiveRecord::Schema[7.0].define(version: 2023_08_19_002210) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "grade_id", null: false
    t.date "attendance_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.index ["grade_id"], name: "index_attendances_on_grade_id"
    t.index ["student_id"], name: "index_attendances_on_student_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marks", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "subject_id", null: false
    t.integer "marks_obtained"
    t.integer "max_marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_marks_on_student_id"
    t.index ["subject_id"], name: "index_marks_on_subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "admission_number"
    t.bigint "phone_number"
    t.string "father_name"
    t.string "mothers_name"
    t.date "dob"
    t.date "date_of_admission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "grade_id", null: false
    t.string "email"
    t.index ["grade_id"], name: "index_students_on_grade_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.bigint "grade_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_subjects_on_grade_id"
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "subjects_teachers", id: false, force: :cascade do |t|
    t.bigint "subject_id", null: false
    t.bigint "teacher_id", null: false
    t.index ["subject_id", "teacher_id"], name: "index_subjects_teachers_on_subject_id_and_teacher_id"
    t.index ["teacher_id", "subject_id"], name: "index_subjects_teachers_on_teacher_id_and_subject_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.bigint "grade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["grade_id"], name: "index_teachers_on_grade_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attendances", "grades"
  add_foreign_key "attendances", "students"
  add_foreign_key "marks", "students"
  add_foreign_key "marks", "subjects"
  add_foreign_key "students", "grades"
  add_foreign_key "subjects", "grades"
  add_foreign_key "subjects", "teachers"
  add_foreign_key "teachers", "grades"
end
