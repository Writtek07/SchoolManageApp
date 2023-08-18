class CreateMarks < ActiveRecord::Migration[7.0]
  def change
    create_table :marks do |t|
      t.references :student, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.integer :marks_obtained
      t.integer :max_marks

      t.timestamps
    end
  end
end
