class AddStudentIdToSkills < ActiveRecord::Migration[8.0]
  def change
    add_column :skills, :student_id, :integer
  end
end
