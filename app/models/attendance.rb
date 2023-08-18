class Attendance < ApplicationRecord
  belongs_to :student
  belongs_to :grade
  enum status: { present: 0, absent: 1 }
end
