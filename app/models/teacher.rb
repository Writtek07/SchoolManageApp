class Teacher < ApplicationRecord
  # belongs_to :section
  belongs_to :grade
  has_many :student
end
