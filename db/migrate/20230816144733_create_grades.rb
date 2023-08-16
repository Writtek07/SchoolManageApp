class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.references :class_name, null: false, foreign_key: true
      t.integer :class_teacher

      t.timestamps
    end
  end
end
