class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :admission_number
      t.bigint :phone_number
      t.string :father_name
      t.string :mothers_name
      t.date :dob
      t.date :date_of_admission

      t.timestamps
    end
  end
end
