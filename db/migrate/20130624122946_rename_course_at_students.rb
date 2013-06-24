class RenameCourseAtStudents < ActiveRecord::Migration
  def change
  	rename_column :students, :course, :course_id
  end
end
