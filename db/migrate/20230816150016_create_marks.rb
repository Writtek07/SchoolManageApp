class CreateMarks < ActiveRecord::Migration[7.0]
  def change
    create_table :marks do |t|
      t.integer :max_attainable
      t.integer :attained
      t.integer :class_id
      t.integer :student_id
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
