class AddStudentIdToKarteikartes < ActiveRecord::Migration
  def change
    add_column :karteikartes, :student_id, :integer
  end
end
