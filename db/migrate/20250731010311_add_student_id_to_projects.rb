class AddStudentIdToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :student_id, :integer
  end
end
