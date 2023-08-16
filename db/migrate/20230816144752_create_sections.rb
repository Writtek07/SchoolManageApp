class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.references :section_name, null: false, foreign_key: true
      t.integer :class_teacher

      t.timestamps
    end
  end
end
