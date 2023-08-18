class ChangeStatusInAttendances < ActiveRecord::Migration[7.0]
  def change
    remove_column :attendances, :status, :boolean
    add_column :attendances, :status, :integer, default: 0
  end
end
