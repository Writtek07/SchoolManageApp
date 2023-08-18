class Teacher < ApplicationRecord
  belongs_to :grade
  has_many :subjects
end
