class Student < ApplicationRecord
    has_many :attendances
    has_one :grade
end
