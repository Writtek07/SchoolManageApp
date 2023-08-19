class Subject < ApplicationRecord
  belongs_to :grade
  has_and_belongs_to_many :teachers
  has_many :marks
end
