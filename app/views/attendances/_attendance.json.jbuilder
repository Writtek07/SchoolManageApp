json.extract! attendance, :id, :student_id, :grade_id, :attendance_date, :status, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
