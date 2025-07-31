class AddStudentIdToEducation < ActiveRecord::Migration[8.0]
  def change
    add_column :educations, :student_id, :integer
  end
end
