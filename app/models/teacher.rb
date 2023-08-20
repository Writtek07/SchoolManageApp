class Teacher < ApplicationRecord
  belongs_to :grade
  has_and_belongs_to_many :subjects

  after_create :create_user
  
  validates :name, presence: true
  validates :email, presence: true
  validates :subject_ids, presence: :true
  

  def subjects_allowed
    Subject.where(grade_id: self.grade_id)
  end

  
  private

  def create_user
    User.create(email: email, password: "password", password_confirmation: "password", role: 2)
  end  
end
