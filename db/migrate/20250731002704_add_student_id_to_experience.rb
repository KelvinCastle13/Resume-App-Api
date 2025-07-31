class AddStudentIdToExperience < ActiveRecord::Migration[8.0]
  def change
    add_column :experiences, :student_id, :integer
  end
end
