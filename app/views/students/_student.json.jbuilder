json.extract! student, :id, :first_name, :last_name, :admission_number, :phone_number, :father_name, :mothers_name, :dob, :date_of_admission, :created_at, :updated_at
json.url student_url(student, format: :json)
