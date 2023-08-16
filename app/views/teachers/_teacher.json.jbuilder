json.extract! teacher, :id, :name, :is_class_teacher, :section_id, :grade_id, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
