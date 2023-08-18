class Subject < ApplicationRecord
  belongs_to :grade
  belongs_to :teacher
  has_many :marks
end
