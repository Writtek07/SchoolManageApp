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

ActiveRecord::Schema[7.0].define(version: 2023_08_16_150016) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.date "date_of_record"
    t.bigint "student_id", null: false
    t.bigint "grade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_attendances_on_grade_id"
    t.index ["student_id"], name: "index_attendances_on_student_id"
  end

  create_table "class_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.bigint "class_name_id", null: false
    t.integer "class_teacher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_name_id"], name: "index_grades_on_class_name_id"
  end

  create_table "marks", force: :cascade do |t|
    t.integer "max_attainable"
    t.integer "attained"
    t.integer "class_id"
    t.integer "student_id"
    t.bigint "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_marks_on_subject_id"
  end

  create_table "section_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.bigint "section_name_id", null: false
    t.integer "class_teacher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_name_id"], name: "index_sections_on_section_name_id"
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
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.boolean "is_class_teacher"
    t.bigint "grade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_teachers_on_grade_id"
  end

  add_foreign_key "attendances", "grades"
  add_foreign_key "attendances", "students"
  add_foreign_key "grades", "class_names"
  add_foreign_key "marks", "subjects"
  add_foreign_key "sections", "section_names"
  add_foreign_key "teachers", "grades"
end
