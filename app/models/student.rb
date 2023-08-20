class Student < ApplicationRecord
    belongs_to :grade
    has_many :marks
    has_many :attendances
    
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :admission_number, presence: true
    validates :phone_number, presence: true, length: {minimum:3, maximum:10}
    validates_numericality_of :admission_number, on: :create, message: "is not a number"
    validates_numericality_of :phone_number, on: :create, message: "is not a number"
    
    after_create :create_user


    def create_user
        User.create(email: email, password: "password", password_confirmation: "password", role: 1)
    end
end
