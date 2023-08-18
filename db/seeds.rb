# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
subs = ["English", "Hindi", "Mathematics", "Science", "Social Science", "EVS"]
10.times do
    num = "9#{Faker::Number.number(digits: 9)}"
    grade_number = rand(1..12)
    grade_letter = ('A'..'C').to_a.sample
    Grade.create(name: "#{grade_number}#{grade_letter}")
    Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, admission_number: Faker::Number.number(digits: 4), phone_number: num,
                    father_name: "#{Faker::Name.male_first_name} #{Faker::Name.last_name}", mothers_name: "#{Faker::Name.female_first_name} #{Faker::Name.last_name}",
                    dob: Faker::Date.between(from: '1996-01-01', to: '2019-01-01'), date_of_admission:  Faker::Date.between(from: '2022-01-01', to: '2023-05-01'), grade_id: Grade.last.id)
    Teacher.create(name: Faker::Name.name, grade_id: Grade.last.id)
    Subject.create(name: subs[Faker::Number.within(range: 0..5)], grade_id: Grade.last.id, teacher_id: Teacher.last.id)
    Mark.create(subject_id: Subject.last.id, marks_obtained: Faker::Number.within(range: 45..99), student_id: Student.last.id, max_marks: 100)
    Attendance.create(attendance_date: Faker::Date.between(from: 2.weeks.ago, to: Date.today), student_id: Student.last.id, grade_id: Student.last.grade.id, status: Faker::Number.binary(digits: 1))
end