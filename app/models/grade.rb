class Grade < ApplicationRecord
  belongs_to :class_name
  belongs_to :student
  has_many :teachers
  has_many :sections
  has_many :attendances
end
